import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';
import 'package:whatsapp_direct_message/core/localization/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
  Future<void> pushNamed(String destination, {Object? arguments}) {
    return Navigator.pushNamed(
      this,
      destination,
      arguments: arguments,
    );
  }

  Future<void> pushReplacementNamed(String destination, {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      this,
      destination,
      arguments: arguments,
    );
  }

  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key)!;
  }

  void pop() {
    return Navigator.pop(this);
  }
}
