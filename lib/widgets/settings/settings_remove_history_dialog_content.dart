import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class SettingsRemoveHistoryDialogContent extends StatelessWidget {
  const SettingsRemoveHistoryDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.translate(LangKeys.areYouSureYouWantToRemoveTheHistory),
      style: AppTextStyles.medium14.copyWith(
        color: context.color.textColor,
      ),
    );
  }
}
