import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_app_version.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_change_language_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_dark_theme_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_remove_history.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_save_numbers_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_share_app.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title_and_back_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SafeArea(
          child: Column(
            children: [
              const SettingsTitleAndBackButton(),
              Gap(context.height * 0.06),
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
      ),
    );
  }
}
