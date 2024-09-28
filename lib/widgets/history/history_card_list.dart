import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card.dart';

class HistoryCardList extends StatelessWidget {
  const HistoryCardList({super.key, required this.contacts});
  final List<ContactModel> contacts;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return HistoryCard(
          contact: contacts[index],
        );
      },
      separatorBuilder: (context, index) {
        return Gap(context.height * 0.025);
      },
    );
  }
}
