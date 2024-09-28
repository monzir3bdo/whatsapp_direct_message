import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: AppLightColors.primary)),
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
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: AppLightColors.primary)),
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
