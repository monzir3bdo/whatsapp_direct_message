import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import '../../generated/assets.dart';

class EmptyHistoryWidget extends StatelessWidget {
  const EmptyHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(
          Assets.animationsEmpty,
          width: context.width * 0.8,
          height: context.height * 0.35,
          fit: BoxFit.cover,
        ),
        Gap(context.height * 0.05),
        Text(
          context.translate(LangKeys.emptyHistory),
          style:
              AppTextStyles.semiBold16.copyWith(color: AppLightColors.primary),
        )
      ],
    );
  }
}
