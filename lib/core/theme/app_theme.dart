import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import '../database/hive_data_base.dart';
import 'app_text_styels.dart';

ThemeData lightTheme() => ThemeData(
      fontFamily: HiveDatabase.instance.selectedLanguage!
                  .get(selectedLanguageKey, defaultValue: 'en') ==
              'en'
          ? poppinsFont
          : montserrat,
      fontFamilyFallback: const [poppinsFont, montserrat],
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppLightColors.primary,
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: AppLightColors.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(
            color: AppLightColors.black.withOpacity(0.2),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              6,
            ),
          ),
          borderSide: BorderSide(
            color: AppLightColors.black.withOpacity(0.2),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
          borderSide: BorderSide(
            color: AppLightColors.black.withOpacity(0.2),
          ),
        ),
        hintStyle: const TextStyle(color: AppLightColors.lightGrey),
      ),
      scaffoldBackgroundColor: AppLightColors.backgroundColor,
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.light,
      ],
      colorScheme: ColorScheme.fromSeed(seedColor: AppLightColors.primary),
      tabBarTheme: const TabBarTheme(
        // labelStyle: AppTextStyles.bold16.copyWith(fontSize: 14),
        // unselectedLabelStyle: AppTextStyles.bold16.copyWith(fontSize: 14),
        dividerHeight: 0,
        labelColor: Colors.white,
        unselectedLabelColor: AppLightColors.primary,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
ThemeData darkTheme() => ThemeData(
      fontFamily: HiveDatabase.instance.selectedLanguage!
                  .get(selectedLanguageKey, defaultValue: 'en') ==
              'en'
          ? poppinsFont
          : montserrat,
      fontFamilyFallback: const [poppinsFont, montserrat],
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: AppLightColors.primary)),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: AppLightColors.backgroundColor.withOpacity(0.1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.backgroundColor.withOpacity(0.1),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.backgroundColor.withOpacity(0.1),
          ),
        ),
        hintStyle: const TextStyle(color: Colors.white),
      ),
      scaffoldBackgroundColor: AppDarkColors.backgroundColor,
      dialogTheme: DialogTheme(
        backgroundColor: AppDarkColors.backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: AppLightColors.backgroundColor.withOpacity(0.2),
            )),
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppDarkColors.primary,
      ),
      tabBarTheme: const TabBarTheme(
        // labelStyle: AppTextStyles.bold16.copyWith(fontSize: 14),
        // unselectedLabelStyle: AppTextStyles.bold16.copyWith(fontSize: 14),
        dividerHeight: 0,
        labelColor: Colors.white,
        unselectedLabelColor: AppLightColors.primary,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.dark,
      ],
    );
