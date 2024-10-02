import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/core/functions/functions.dart';

part 'extract_success_cubit.freezed.dart';
part 'extract_success_state.dart';

class ExtractSuccessCubit extends Cubit<ExtractSuccessState> {
  ExtractSuccessCubit() : super(const ExtractSuccessState.initial());
  PhoneNumber phoneNumber = PhoneNumber(dialCode: '+249', isoCode: 'SD');
  TextEditingController messageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> extractMessageKey = GlobalKey<FormState>();
  changeNumber(String selectedPhoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(selectedPhoneNumber);
    phoneNumber =
        PhoneNumber(isoCode: number.isoCode, dialCode: number.dialCode);
    String parsableNumber = number.parseNumber();
    phoneNumberController.text = parsableNumber.replaceAll('+', '');

    emit(ExtractSuccessState.numberChanged(phoneNumber: selectedPhoneNumber));
  }

  sendMessage() {
    if (extractMessageKey.currentState!.validate()) {
      openWhatsapp('+${phoneNumber.dialCode}${phoneNumberController.text}',
          messageController.text.trim());
    }
  }

  @override
  Future<void> close() {
    messageController.dispose();
    phoneNumberController.dispose();
    return super.close();
  }
}
