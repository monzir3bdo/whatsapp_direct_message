import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class EmptyHistoryWidget extends StatelessWidget {
  const EmptyHistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(context.height * 0.12),
        Container(
          width: context.width * 0.8,
          height: context.height * 0.35,
          color: Colors.indigo,
        ),
        Gap(context.height * 0.12),
        Text(
          'Empty Chat List'.hardCoded,
          style:
              AppTextStyles.semiBold16.copyWith(color: AppLightColors.primary),
        )
      ],
    );
  }
}
