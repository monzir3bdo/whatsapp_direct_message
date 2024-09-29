import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/widgets/history/whatsapp_icon_button.dart';

class HistorySendMessage extends StatelessWidget {
  const HistorySendMessage({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return WhatsappIconButton(
      onTap: () {
        context.read<SendMessageCubit>().openWhatsapp(phoneNumber, '');
      },
    );
  }
}
