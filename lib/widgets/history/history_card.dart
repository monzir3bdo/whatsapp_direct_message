import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_send_message.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key, required this.contact});
  final ContactModel contact;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.09,
      padding: const EdgeInsets.only(left: 16, right: 10, top: 15),
      decoration: BoxDecoration(
        color: context.color.containerColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.color.containerBorderColor!.withOpacity(0.2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                contact.name ?? 'No Name',
                style: AppTextStyles.medium14
                    .copyWith(color: context.color.textColor),
              ),
              Gap(context.height * 0.015),
              Text(
                contact.phoneNumber,
                style: AppTextStyles.medium14
                    .copyWith(color: context.color.textColor),
              ),
            ],
          ),
          HistorySendMessage(
            phoneNumber: contact.phoneNumber,
          )
        ],
      ),
    );
  }
}
