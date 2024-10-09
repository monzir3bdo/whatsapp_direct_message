import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whatsapp_direct_message/blocs/onboarding/onboarding_cubit.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller:
          context.read<OnboardingCubit>().pageController, // PageController
      count: 3,
      effect: const WormEffect(
        dotHeight: 8,
        radius: 12,
        activeDotColor: AppLightColors.primary,
      ), // your preferred effect
      onDotClicked: (index) {
        context.read<OnboardingCubit>().changePage(pageIndex: index);
      },
    );
  }
}
