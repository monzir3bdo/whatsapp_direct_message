import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/colors_extenion.dart';

extension BuildContextExtension on BuildContext {
  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;
  double get height => MediaQuery.sizeOf(this).height;
  double get width => MediaQuery.sizeOf(this).width;
}
