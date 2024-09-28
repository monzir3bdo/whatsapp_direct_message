import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_title_and_back_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Column(
            children: [
              SettingsTitleAndBackButton(),
              //0.06
            ],
          ),
        ),
      ),
    );
  }
}
