import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card.dart';

class HistoryCardList extends StatelessWidget {
  const HistoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 50,
      itemBuilder: (context, index) {
        return const HistoryCard();
      },
      separatorBuilder: (context, index) {
        return Gap(context.height * 0.025);
      },
    );
  }
}
