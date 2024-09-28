import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class CurrentLanguageWidget extends StatelessWidget {
  const CurrentLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Arabc'.hardCoded,
          style:
              AppTextStyles.medium14.copyWith(color: context.color.textColor),
        ),
        const Gap(5),
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: context.color.textColor,
        )
      ],
    );
  }
}
