import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      child: Text(
        context.translate(LangKeys.generate),
        style: AppTextStyles.medium14.copyWith(
          fontSize: 16,
          color: AppLightColors.backgroundColor,
        ),
      ),
    );
  }
}
