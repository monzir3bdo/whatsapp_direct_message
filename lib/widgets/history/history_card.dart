import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.09,
      padding: const EdgeInsets.only(left: 16, right: 20),
      decoration: BoxDecoration(
        color: context.color.containerColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.color.containerBorderColor!.withOpacity(0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No Name',
                  style: AppTextStyles.medium14
                      .copyWith(color: context.color.textColor),
                ),
                Gap(context.height * 0.015),
                Text(
                  '0543659079',
                  style: AppTextStyles.medium14
                      .copyWith(color: context.color.textColor),
                ),
              ],
            ),
          ),
          Icon(Icons.message),
        ],
      ),
    );
  }
}
