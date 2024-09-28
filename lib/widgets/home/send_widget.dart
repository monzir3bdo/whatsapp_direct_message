import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

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
          text: 'Whatsapp'.hardCoded,
          icon: Icons.send,
        ),
        WhatsappButton(
          onPressed: () {},
          text: 'Wa Business'.hardCoded,
          icon: Icons.send,
        ),
      ],
    );
  }
}