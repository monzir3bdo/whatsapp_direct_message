import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/core/validators/custom_regex.dart';

part 'extract_text_cubit.freezed.dart';
part 'extract_text_state.dart';

class ExtractTextCubit extends Cubit<ExtractTextState> {
  ExtractTextCubit() : super(const ExtractTextState.initial());
  TextEditingController pasteController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  PhoneNumber phoneNumber = PhoneNumber(dialCode: '+249', isoCode: 'SD');
  extractPhoneNumbersFromText(String text) {
    try {
      emit(const ExtractTextState.loading());
      List<String> phoneNumbers =
          CustomRegex.extractPhoneNumberFromString(text);
      if (phoneNumbers.isEmpty) {
        emit(const ExtractTextState.empty());
        return;
      }
      final trimmedNumbers = phoneNumbers
          .map((number) => number.replaceFirst('00', '+').trim())
          .toList();
      emit(ExtractTextState.success(numbers: trimmedNumbers));
    } catch (e) {
      emit(ExtractTextState.failure(message: e.toString()));
    }
  }

  // checkPhoneNumberLength(String phoneNumber) {
  //   if (phoneNumber.startsWith('00') || phoneNumber.startsWith('+')) {
  //   } else if (phoneNumber.length < 6) {}
  // }

  @override
  Future<void> close() {
    pasteController.dispose();
    phoneNumberController.dispose();
    return super.close();
  }
}
