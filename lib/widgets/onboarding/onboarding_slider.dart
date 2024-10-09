import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/onboarding/onboarding_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/utils/onboarding_data.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_image.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_indicator.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_subtitle.dart';
import 'package:whatsapp_direct_message/widgets/onboarding/onboarding_title.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: context.height * 0.6,
      ),
      child: PageView.builder(
        itemCount: onboardingData.length,
        controller: context.read<OnboardingCubit>().pageController,
        allowImplicitScrolling: true,
        onPageChanged: (pageIndex) {
          context.read<OnboardingCubit>().updateCurrentPage(pageIndex);
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              OnboardingImage(image: onboardingData[index].image),
              const Gap(20),
              const OnboardingTitle(),
              const Gap(20),
              const OnboardingSubtitle(),
              const Gap(10),
              const OnboardingIndicator(),
            ],
          );
        },
      ),
    );
  }
}
