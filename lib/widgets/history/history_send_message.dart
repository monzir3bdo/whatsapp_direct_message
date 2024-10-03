import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/widgets/history/whatsapp_icon_button.dart';

import '../../core/functions/functions.dart';

class HistorySendMessage extends StatelessWidget {
  const HistorySendMessage({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return WhatsappIconButton(
      onTap: () async {
        await openWhatsapp(phoneNumber, '');
        if (context.mounted) {
          context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
        }
      },
    );
  }
}
