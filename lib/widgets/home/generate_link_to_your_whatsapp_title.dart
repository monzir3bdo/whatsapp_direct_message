import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class GenerateLinkToYourWhatsappTitle extends StatelessWidget {
  const GenerateLinkToYourWhatsappTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.translate(LangKeys.generateLinkToYourWhatsapp),
      style: AppTextStyles.medium14.copyWith(
        color: AppLightColors.primary,
      ),
    );
  }
}
