import 'package:flutter/material.dart';
import 'package:mystore_app/core/styles/colors/dark_colors.dart';
import 'package:mystore_app/core/styles/colors/light_colors.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.containerColor,
    required this.textColor,
    required this.floatingActionButtonColor,
  });

  final Color? containerColor;

  final Color? textColor;
  final Color? floatingActionButtonColor;

  @override
  ThemeExtension<ColorExtension> copyWith({
    Color? containerColor,
    Color? textColor,
    Color? floatingActionButtonColor,
  }) {
    return ColorExtension(
        containerColor: containerColor,
        textColor: textColor,
        floatingActionButtonColor: floatingActionButtonColor);
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other! is ColorExtension) return this;
    return ColorExtension(
        containerColor: containerColor,
        textColor: textColor,
        floatingActionButtonColor: floatingActionButtonColor);
  }

  static ColorExtension light = const ColorExtension(
    containerColor: AppLightColors.backgroundColor,
    textColor: AppLightColors.black,
    floatingActionButtonColor: AppLightColors.backgroundColor,
  );
  static ColorExtension dark = const ColorExtension(
    containerColor: AppDarkColors.containerColor,
    textColor: AppLightColors.backgroundColor,
    floatingActionButtonColor: AppDarkColors.primary,
  );
}
