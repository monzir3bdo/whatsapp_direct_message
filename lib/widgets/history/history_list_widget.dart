import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card_list.dart';
import 'package:whatsapp_direct_message/widgets/history/history_title.dart';

class HistoryListWidget extends StatelessWidget {
  const HistoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          const HistoryTitle(),
          SliverGap(context.height * 0.025),
          const HistoryCardList(),
          SliverGap(context.height * 0.025),
        ],
      ),
    );
  }
}