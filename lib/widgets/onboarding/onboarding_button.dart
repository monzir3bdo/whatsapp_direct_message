import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/onboarding/onboarding_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/utils/onboarding_data.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

import '../../core/routes/app_routes.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return context.read<OnboardingCubit>().currentPage ==
                onboardingData.length - 1
            ? BlocBuilder<OnboardingCubit, OnboardingState>(
                builder: (context, state) {
                  return AppButton(
                    child: Text(
                      context.translate(LangKeys.goToHome),
                      style: AppTextStyles.medium14
                          .copyWith(color: AppLightColors.backgroundColor),
                    ),
                    onPressed: () async {
                      await context
                          .read<OnboardingCubit>()
                          .markOnboardingCompleted();
                      if (context.mounted) {
                        context.pushNamed(AppRoutes.home);
                      }
                    },
                  );
                },
              )
            : AppButton(
                child: Text(
                  context.translate(LangKeys.next),
                  style: AppTextStyles.medium14
                      .copyWith(color: AppLightColors.backgroundColor),
                ),
                onPressed: () {
                  context.read<OnboardingCubit>().nextPage();
                },
              );
      },
    );
  }
}
