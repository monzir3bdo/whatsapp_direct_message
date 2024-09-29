import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';

import '../../generated/assets.dart';
import 'whatsapp_button.dart';

class SendWidgets extends StatelessWidget {
  const SendWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WhatsappButton(
      onPressed: () async {
        if (context.read<SendMessageCubit>().formKey.currentState!.validate()) {
          await context.read<SendMessageCubit>().sendMessage();
        }
        final oldValues =
            HiveDatabase.instance.history!.get(historyKey, defaultValue: []);
        if (context.mounted) {
          oldValues!.add(ContactModel(
              phoneNumber: context.read<SendMessageCubit>().phone!));
          await HiveDatabase.instance.history!.put(historyKey, oldValues);
        }
      },
      text: context.translate(LangKeys.whatsapp),
      icon: Assets.svgWhatsapp,
    );
  }
}
