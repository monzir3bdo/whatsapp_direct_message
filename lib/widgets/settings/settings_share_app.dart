import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

class SettingsShareApp extends StatelessWidget {
  const SettingsShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Share The App'.hardCoded,
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          Icon(Icons.arrow_forward_ios_sharp, color: context.color.textColor)
        ],
      ),
    );
  }
}
