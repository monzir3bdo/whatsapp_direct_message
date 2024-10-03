import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';

import '../../core/database/hive_data_base.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        FocusManager.instance.primaryFocus!.unfocus();
        await Future.delayed(const Duration(milliseconds: 100), () {
          if (context.mounted) {
            context.pushNamed(AppRoutes.settingsScreen);
          }
        });
      },
      backgroundColor: context.color.floatingActionButtonColor,
      shape: const CircleBorder(),
      child: Icon(
        CupertinoIcons.settings_solid,
        color: HiveDatabase.instance!.isDark!.get(darkKey, defaultValue: false)!
            ? Colors.white
            : Colors.black,
        size: 30,
      ),
    );
  }
}
