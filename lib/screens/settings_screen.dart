import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_dark_theme_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_save_numbers_widget.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title_and_back_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            children: [
              const SettingsTitleAndBackButton(),
              Gap(context.height * 0.06),
              const SettingsDarkThemeWidget(),
              Gap(context.height * 0.05),
              const SettingsSaveNumbersWidget()
            ],
          ),
        ),
      ),
    );
  }
}
