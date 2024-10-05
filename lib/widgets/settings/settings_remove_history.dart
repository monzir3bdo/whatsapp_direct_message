import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/functions/functions.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_remove_history_dialog.dart';

class SettingsRemoveHistory extends StatelessWidget {
  const SettingsRemoveHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          incrementTapCount();
          showDialog(
            context: context,
            builder: (context) {
              return const SettingsRemoveHistoryDialog();
            },
          );
        },
        child: Text(
          context.translate(LangKeys.removeHistory),
          style: AppTextStyles.medium14.copyWith(
            color: AppLightColors.red,
          ),
        ),
      ),
    );
  }
}
