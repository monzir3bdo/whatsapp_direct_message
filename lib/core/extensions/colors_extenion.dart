import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension(
      {required this.containerColor,
      required this.textColor,
      required this.floatingActionButtonColor,
      required this.greyTabBarColor,
      required this.containerBorderColor});

  final Color? containerColor;
  final Color? containerBorderColor;
  final Color? greyTabBarColor;
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
      floatingActionButtonColor: floatingActionButtonColor,
      greyTabBarColor: greyTabBarColor,
      containerBorderColor: containerBorderColor,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      covariant ThemeExtension<ColorExtension>? other, double t) {
    if (other! is ColorExtension) return this;
    return ColorExtension(
        containerColor: containerColor,
        textColor: textColor,
        floatingActionButtonColor: floatingActionButtonColor,
        greyTabBarColor: greyTabBarColor,
        containerBorderColor: containerBorderColor);
  }

  static ColorExtension light = const ColorExtension(
    containerColor: AppLightColors.backgroundColor,
    textColor: AppLightColors.primary,
    floatingActionButtonColor: AppLightColors.backgroundColor,
    greyTabBarColor: AppLightColors.tabGreyColor,
    containerBorderColor: AppLightColors.black,
  );
  static ColorExtension dark = const ColorExtension(
    containerColor: AppDarkColors.containerColor,
    textColor: AppLightColors.backgroundColor,
    floatingActionButtonColor: AppDarkColors.primary,
    greyTabBarColor: AppDarkColors.darkGrey,
    containerBorderColor: Color(0xff555555),
  );
}
