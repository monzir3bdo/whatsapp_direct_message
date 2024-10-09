import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_change_language.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_skip_button.dart';

class OnboardingChangeLanguageAndSkip extends StatelessWidget {
  const OnboardingChangeLanguageAndSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OnboardingChangeLanguage(),
        OnboardingSkipButton(),
      ],
    );
  }
}
