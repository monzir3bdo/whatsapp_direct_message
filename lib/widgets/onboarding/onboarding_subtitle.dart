import 'package:flutter/material.dart';

import '../../core/theme/app_text_styels.dart';

class OnboardingSubtitle extends StatelessWidget {
  const OnboardingSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'This is should be the onboarding title',
      style: AppTextStyles.semiBold16,
    );
  }
}
