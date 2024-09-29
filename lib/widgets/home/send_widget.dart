import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import '../../generated/assets.dart';
import 'whatsapp_button.dart';

class SendWidgets extends StatelessWidget {
  const SendWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        WhatsappButton(
          onPressed: () {},
          text: context.translate(LangKeys.whatsapp),
          icon: Assets.svgWhatsapp,
        ),
        WhatsappButton(
          onPressed: () {},
          text: context.translate(LangKeys.waBusiness),
          icon: Assets.svgWaBusiness,
        ),
      ],
    );
  }
}
