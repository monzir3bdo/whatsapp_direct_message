import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class SettingsRemoveHistoryDialogTitle extends StatelessWidget {
  const SettingsRemoveHistoryDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.translate(LangKeys.removeHistory),
      style: AppTextStyles.bold16.copyWith(
        color: context.color.textColor,
      ),
    );
  }
}
