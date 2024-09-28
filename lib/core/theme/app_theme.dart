import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: AppLightColors.backgroundColor,
      colorScheme: ColorScheme.fromSeed(seedColor: AppLightColors.primary),
    );
ThemeData darkTheme() => ThemeData(
      scaffoldBackgroundColor: AppDarkColors.backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppDarkColors.primary,
      ),
    );
