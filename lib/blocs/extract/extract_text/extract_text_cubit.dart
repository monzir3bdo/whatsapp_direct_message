import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/validators/custom_regex.dart';

part 'extract_text_cubit.freezed.dart';
part 'extract_text_state.dart';

class ExtractTextCubit extends Cubit<ExtractTextState> {
  ExtractTextCubit() : super(const ExtractTextState.initial());
  TextEditingController pasteController = TextEditingController();

  extractPhoneNumbersFromText(String text) {
    try {
      emit(const ExtractTextState.loading());
      List<String> phoneNumbers =
          CustomRegex.extractPhoneNumberFromString(text);
      if (phoneNumbers.isEmpty) {
        emit(const ExtractTextState.empty());
        return;
      }

      emit(ExtractTextState.success(numbers: phoneNumbers));
    } catch (e) {
      emit(ExtractTextState.failure(message: e.toString()));
    }
  }

  retry() {
    pasteController.clear();
    emit(const ExtractTextState.initial());
  }

  @override
  Future<void> close() {
    pasteController.dispose();

    return super.close();
  }
}
