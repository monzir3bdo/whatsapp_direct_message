import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: AppLightColors.backgroundColor,
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.light,
      ],
      colorScheme: ColorScheme.fromSeed(seedColor: AppLightColors.primary),
    );
ThemeData darkTheme() => ThemeData(
      scaffoldBackgroundColor: AppDarkColors.backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppDarkColors.primary,
      ),
      extensions: <ThemeExtension<dynamic>>[
        ColorExtension.dark,
      ],
    );
