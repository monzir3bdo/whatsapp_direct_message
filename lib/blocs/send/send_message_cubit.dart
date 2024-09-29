import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'send_message_cubit.freezed.dart';
part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit() : super(const SendMessageState.initial());
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  String? phone;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> sendMessage() async {
    try {
      emit(const SendMessageState.loading());

      await launchUrl(Uri(
        scheme: 'https',
        host: 'wa.me',
        path: "+${phone!.replaceAll('+', '')}",
        queryParameters: messageController.text.isNotEmpty
            ? {'text': messageController.text}
            : null,
      ));
      emit(const SendMessageState.success());
    } catch (e) {
      emit(const SendMessageState.success());
    }
  }

  disposeControllers() {
    phoneController.dispose();
    messageController.dispose();
  }
}
