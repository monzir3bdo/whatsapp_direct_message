import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

import '../../core/theme/app_text_styels.dart';

class OnboardingSubtitle extends StatelessWidget {
  const OnboardingSubtitle({super.key, required this.subtitleKey});
  final String subtitleKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        context.translate(subtitleKey),
        style: AppTextStyles.regular12.copyWith(
          color: context.color.textColor,
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
