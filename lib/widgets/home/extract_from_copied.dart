import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import '../../blocs/send/send_message_cubit.dart';
import 'phone_number_widget.dart';

class ExtractFromCopiedTextWidgets extends StatelessWidget {
  const ExtractFromCopiedTextWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneTitle(title: context.translate(LangKeys.orExtractPhoneNumberFromCopiedText)),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: context.read<SendMessageCubit>().copiedPhoneController,
          decoration: InputDecoration(
            hintText: context.translate(LangKeys.pasteTheTextHere),
          ),
        )
      ],
    );
  }
}
