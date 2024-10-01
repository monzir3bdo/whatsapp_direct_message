import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/validators/custom_regex.dart';

import '../../core/widgets/snack_bars.dart';

part 'send_message_cubit.freezed.dart';
part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit() : super(const SendMessageState.initial());
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final TextEditingController copiedPhoneController = TextEditingController();
  final TextEditingController copiedMessageController = TextEditingController();
  final List<String> phoneNumbers = [];

  String? phone;
  String? copiedPhone;
  String? phoneForGenerate;
  String generatedLink = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> pasteFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> generateFormKey = GlobalKey<FormState>();

  Future<void> sendMessage() async {
    try {
      emit(const SendMessageState.loading());

      await openWhatsapp(phone!, messageController.text);
      emit(const SendMessageState.success());
    } catch (e) {
      emit(const SendMessageState.success());
    }
  }

  Future<void> sendCopiedTextMessage() async {
    try {
      emit(const SendMessageState.loading());
      copiedPhone = copiedPhoneController.text.replaceAll('\r', '');
      await openWhatsapp(copiedPhone!, copiedMessageController.text);

      copiedPhone = copiedPhoneController.text;
      if (copiedPhone!.startsWith('\r')) {
        copiedPhone = copiedPhone!.replaceFirst('\r', '');
        copiedPhone = copiedPhone!.replaceFirst(' ', '');
      }
      await openWhatsapp(copiedPhone!, copiedMessageController.text);
      emit(const SendMessageState.success());
    } catch (e) {
      emit(const SendMessageState.success());
    }
  }

  Future<void> generateNumbers(BuildContext context) async {
    try {
      emit(const SendMessageState.generateNumbersIsLoading());
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      String? clipboardText = clipboardData?.text;
      if (clipboardText != null) {
        phoneNumbers.clear();
        phoneNumbers
            .addAll(CustomRegex.extractPhoneNumberFromString(clipboardText));
        if (phoneNumbers.isNotEmpty) {
          copiedPhoneController.text = phoneNumbers.first;
        }
        if (phoneNumbers.isEmpty) {
          SnackBars.showErrorSnackBar(context,
              context.translate(LangKeys.noPhoneNumberFoundInTheCopiedText));
        }
      }
      emit(const SendMessageState.success());
    } catch (e) {
      emit(const SendMessageState.success());
    }
  }

  Future<void> openWhatsapp(String phoneNumber, String message) async {
    if (phoneNumber.startsWith('00')) {
      String newNumber = phoneNumber.replaceFirst('00', '+');
      launchUrl(Uri(
        scheme: 'https',
        host: 'wa.me',
        path: newNumber,
        queryParameters: messageController.text.isNotEmpty
            ? {'text': messageController.text}
            : null,
      ));
      return;
    }
    final url = Uri(
      scheme: 'https',
      host: 'wa.me',
      path: phoneNumber,
      queryParameters: messageController.text.isNotEmpty
          ? {'text': messageController.text}
          : null,
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  disposeControllers() {
    phoneController.dispose();
    messageController.dispose();
    copiedPhoneController.dispose();
  }
}
