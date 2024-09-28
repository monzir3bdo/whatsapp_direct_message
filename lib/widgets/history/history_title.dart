import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class HistoryTitle extends StatelessWidget {
  const HistoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        'Previous Numbers'.hardCoded,
        style: AppTextStyles.semiBold16.copyWith(color: AppLightColors.primary),
      ),
    );
  }
}
