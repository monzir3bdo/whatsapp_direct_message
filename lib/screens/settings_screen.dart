import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_app_bar.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_screen_body.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title_and_back_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SettingsAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SafeArea(
          child: Column(
            children: [
              const SettingsTitleAndBackButton(),
              Gap(context.height * 0.06),
              const SettingsScreenBody(),
            ],
          ),
        ),
      ),
    );
  }
}
