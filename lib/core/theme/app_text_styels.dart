import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

const String poppinsFont = 'Poppins';
const String montserrat = 'Montserrat-Arabic';

abstract class AppTextStyles {
  static TextStyle light12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: HiveDatabase.instance.selectedLanguage!
                .get(selectedLanguageKey, defaultValue: 'en') ==
            'en'
        ? poppinsFont
        : montserrat,
    color: Colors.black,
  );
  static TextStyle regular12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: HiveDatabase.instance.selectedLanguage!
                .get(selectedLanguageKey, defaultValue: 'en') ==
            'en'
        ? poppinsFont
        : montserrat,
    color: Colors.black,
  );
  static TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: HiveDatabase.instance.selectedLanguage!
                .get(selectedLanguageKey, defaultValue: 'en') ==
            'en'
        ? poppinsFont
        : montserrat,
    color: Colors.black,
  );
  static TextStyle semiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: HiveDatabase.instance.selectedLanguage!
                .get(selectedLanguageKey, defaultValue: 'en') ==
            'en'
        ? poppinsFont
        : montserrat,
    color: Colors.black,
  );
  static TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: HiveDatabase.instance.selectedLanguage!
                .get(selectedLanguageKey, defaultValue: 'en') ==
            'en'
        ? poppinsFont
        : montserrat,
    color: Colors.black,
  );
}
