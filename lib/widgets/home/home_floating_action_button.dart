import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.pushNamed(AppRoutes.settingsScreen);
      },
      backgroundColor: context.color.floatingActionButtonColor,
      shape: const CircleBorder(),
      child: const Icon(
        CupertinoIcons.settings_solid,
        size: 30,
      ),
    );
  }
}
