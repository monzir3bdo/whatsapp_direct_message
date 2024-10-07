import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/widgets/history/activate_history_widget.dart';
import 'package:whatsapp_direct_message/widgets/history/empty_history_widget.dart';
import 'package:whatsapp_direct_message/widgets/history/history_list_widget.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (contacts) {
            return HistoryListWidget(contacts: contacts.reversed.toList());
          },
          historyDisable: () {
            return const ActivateHistoryWidget();
          },
          empty: () {
            return const EmptyHistoryWidget();
          },
          orElse: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
      },
    );
  }
}
