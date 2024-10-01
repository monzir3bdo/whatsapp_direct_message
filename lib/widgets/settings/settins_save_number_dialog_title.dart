import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class SettingsSaveNumberDialogTitle extends StatelessWidget {
  const SettingsSaveNumberDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(context.translate(LangKeys.stopSavingNumbers),
        style: AppTextStyles.bold16.copyWith(color: context.color.textColor));
  }
}
