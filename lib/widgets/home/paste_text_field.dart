import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import '../../blocs/send/send_message_cubit.dart';
import '../../core/localization/lang_keys.dart';

class PasteTextField extends StatelessWidget {
  const PasteTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (phoneNumber) {
        if (phoneNumber!.length < 6) {
          return context.translate(
              LangKeys.enterPhoneNumber);
        }
        return null;
      },
      controller: context
          .read<SendMessageCubit>()
          .copiedPhoneController,
      onChanged: (text) {
        context
            .read<SendMessageCubit>()
            .generateNumbers(context);
      },
      decoration: InputDecoration(
        hintText:
            context.translate(LangKeys.pasteTextHere),
      ),
    );
  }
}