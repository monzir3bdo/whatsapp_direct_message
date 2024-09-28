import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height * 0.09,
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
      decoration: BoxDecoration(
        color: context.color.containerColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          //todo: Change the border to match the theme
          color: const Color(0xff555555).withOpacity(0.1),
        ),
      ),
      child: child,
    );
  }
}