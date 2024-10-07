import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class ExtractPhoneNumberWithoutCountryCode extends StatelessWidget {
  const ExtractPhoneNumberWithoutCountryCode({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.ltr,
      HiveDatabase.instance.selectedLanguage!.get(selectedLanguageKey) == 'en'
          ? '$number(${context.translate(LangKeys.withoutCountryCode)})'
          : '(${context.translate(LangKeys.withoutCountryCode)})$number',
      style: const TextStyle(color: AppLightColors.primary),
    );
  }
}
