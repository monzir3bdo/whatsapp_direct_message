import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height * 0.08,
      decoration: BoxDecoration(
        color: context.color.containerColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          //todo: Change the border to match the theme
          color: const Color(0xff555555).withOpacity(0.1),
        ),
      ),
    );
  }
}
