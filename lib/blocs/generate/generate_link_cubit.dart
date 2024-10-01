import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_link_cubit.freezed.dart';
part 'generate_link_state.dart';

class GenerateLinkCubit extends Cubit<GenerateLinkState> {
  GenerateLinkCubit() : super(const GenerateLinkState.initial());
  final GlobalKey<FormState> generateFormKey = GlobalKey<FormState>();
  final TextEditingController generateLinkController = TextEditingController();
  String phone = "";
  generateLink() async {
    if (generateFormKey.currentState!.validate()) {
      emit(const GenerateLinkState.loading());
      final String link = 'https://wa.me/$phone';
      emit(GenerateLinkState.linkGenerated(link: link));
    }
  }

  void clearLink() {
    phone = '';
    generateLinkController.clear();
    emit(const GenerateLinkState.linkCleared());
  }
}
