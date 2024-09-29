import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';

import '../../generated/assets.dart';
import 'whatsapp_button.dart';

class SendWidgets extends StatelessWidget {
  const SendWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendMessageCubit, SendMessageState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const AppButton(
              child: CircularProgressIndicator(),
            );
          },
          orElse: () {
            return WhatsappButton(
              onPressed: () async {
                if (context
                    .read<SendMessageCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  await context.read<SendMessageCubit>().sendMessage();
                  if (context.mounted) {
                    HiveDatabase.instance.history!.add(ContactModel(
                        phoneNumber: context.read<SendMessageCubit>().phone!));
                  }
                }
              },
              text: context.translate(LangKeys.whatsapp),
              icon: Assets.svgWhatsapp,
            );
          },
        );
      },
    );
  }
}
