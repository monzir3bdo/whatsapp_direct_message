import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/widgets/app_back_button.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title.dart';

class SettingsTitleAndBackButton extends StatelessWidget {
  const SettingsTitleAndBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBackButton(),
          SettingsTitle(),
          Gap(35),
        ],
      ),
    );
  }
}
