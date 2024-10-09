import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key, required this.titleKey});
  final String titleKey;
  @override
  Widget build(BuildContext context) {
    return Text(
      context.translate(titleKey),
      style: AppTextStyles.semiBold16.copyWith(
        color: context.color.textColor,
        fontSize: 14,
      ),
      textAlign: TextAlign.center,
    );
  }
}
