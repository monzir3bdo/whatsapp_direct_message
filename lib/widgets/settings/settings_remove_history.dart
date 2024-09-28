import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class SettingsRemoveHistory extends StatelessWidget {
  const SettingsRemoveHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Remove History'.hardCoded,
          style: AppTextStyles.medium14.copyWith(
            color: AppLightColors.red,
          ),
        ),
      ),
    );
  }
}
