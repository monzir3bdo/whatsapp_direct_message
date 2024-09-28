import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/widgets/app_back_button.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title.dart';

class SettingsTitleAndBackButton extends StatelessWidget {
  const SettingsTitleAndBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBackButton(),
        SettingsTitle(),
        SizedBox(
          width: 35,
        )
      ],
    );
  }
}
