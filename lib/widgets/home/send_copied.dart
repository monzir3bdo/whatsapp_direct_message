import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

import '../../blocs/send/send_message_cubit.dart';
import '../../core/database/hive_data_base.dart';
import '../../core/localization/lang_keys.dart';
import '../../core/widgets/app_button.dart';
import '../../generated/assets.dart';
import '../../models/contact_model.dart';
import 'whatsapp_button.dart';

class SendPastedWidgets extends StatelessWidget {
  const SendPastedWidgets({
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
                    .pasteFormKey
                    .currentState!
                    .validate()) {
                  await context
                      .read<SendMessageCubit>()
                      .sendCopiedTextMessage();
                  if (context.mounted) {
                    HiveDatabase.instance.history!.add(ContactModel(
                        phoneNumber: context.read<SendMessageCubit>().copiedPhone!));
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
