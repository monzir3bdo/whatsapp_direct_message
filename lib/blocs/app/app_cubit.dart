import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = HiveDatabase.instance.isDark!
      .get(darkKey, defaultValue: ThemeMode.system == ThemeMode.dark)!;

  bool saveNumber = HiveDatabase.instance.isSaveEnabled!
      .get(saveEnabledKey, defaultValue: true)!;
  String locale = HiveDatabase.instance.selectedLanguage!.get(
      selectedLanguageKey,
      defaultValue: Platform.localeName.split('_')[0])!; //en_US

  void changeTheme() async {
    isDark = !isDark;
    await HiveDatabase.instance.isDark!.put(darkKey, isDark);
    emit(AppState.themeModeChange(isDark: isDark));
  }

  void toggleSaveNumber() async {
    saveNumber = !saveNumber;
    await HiveDatabase.instance.isSaveEnabled!.put(saveEnabledKey, saveNumber);
    emit(AppState.saveNumbersChanged(save: saveNumber));
  }

  void changeLocale() async {
    if (locale == 'en') {
      locale = 'ar';
    } else {
      locale = 'en';
    }

    await HiveDatabase.instance.selectedLanguage!
        .put(selectedLanguageKey, locale);
    emit(AppState.languageChanged(language: locale));
  }
}
