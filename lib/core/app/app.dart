import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/theme/app_theme.dart';
import 'package:whatsapp_direct_message/screens/settings_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SettingsScreen(),
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.dark,
    );
  }
}
