import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_button.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_slider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: OnboardingSlider(),
              ),
              OnboardingButton(),
            ],
          ),
        ),
      ),
    );
  }
}