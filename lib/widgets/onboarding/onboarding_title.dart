import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'This is should be the onboarding title',
      style: AppTextStyles.bold16,
    );
  }
}
