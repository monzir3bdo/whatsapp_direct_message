import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_app_version.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_change_language_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_dark_theme_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_remove_history.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_save_numbers_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_share_app.dart';

import '../../core/constants/constants.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Constants.paddingH),
        child: Column(
          children: [
            const SettingsDarkThemeWidget(),
            Gap(context.height * 0.05),
            const SettingsSaveNumbersWidget(),
            Gap(context.height * 0.05),
            const SettingsChangeLanguageWidget(),
            Gap(context.height * 0.05),
            const SettingsAppVersion(),
            Gap(context.height * 0.05),
            const SettingsShareApp(),
            Gap(context.height * 0.06),
            const SettingsRemoveHistory(),
          ],
        ),
      ),
    );
  }
}
