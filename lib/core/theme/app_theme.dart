import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.primary,
          ),
        ),
        hintStyle: TextStyle(color: AppLightColors.lightGrey),
      ),
      scaffoldBackgroundColor: AppLightColors.backgroundColor,
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.light,
      ],
      colorScheme: ColorScheme.fromSeed(seedColor: AppLightColors.primary),
    );
ThemeData darkTheme() => ThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.primary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.primary,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
            color: AppLightColors.primary,
          ),
        ),
        hintStyle: TextStyle(color: Colors.white),
      ),
      scaffoldBackgroundColor: AppDarkColors.backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppDarkColors.primary,
      ),
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.dark,
      ],
    );
