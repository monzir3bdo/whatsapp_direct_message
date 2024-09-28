import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/widgets/history/history_card.dart';

class HistoryListWidget extends StatelessWidget {
  const HistoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          HistoryCard(),
        ],
      ),
    );
  }
}
