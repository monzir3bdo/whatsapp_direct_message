import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'paste_button.dart';
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
        PhoneTitle(
            title:
                context.translate(LangKeys.orExtractPhoneNumberFromCopiedText)),
        const SizedBox(
          height: 10,
        ),
       const  PasteButton()
      ],
    );
  }
}








