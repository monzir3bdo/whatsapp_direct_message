import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/onboarding/onboarding_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await context.read<OnboardingCubit>().markOnboardingCompleted();
        if (context.mounted) {
          context.pushReplacementNamed(AppRoutes.home);
        }
      },
      child: Text(
        context.translate(LangKeys.skip),
        style: AppTextStyles.semiBold16
            .copyWith(color: AppLightColors.primary, fontSize: 14),
      ),
    );
  }
}
