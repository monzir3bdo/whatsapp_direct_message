import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

class MessageWidgets extends StatelessWidget {
  const MessageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Message'.hardCoded,
            style: TextStyle(
              color: context.color.textColor,
              fontSize: 18,
            )),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          maxLines: 4,
          minLines: 4,
          decoration: InputDecoration(
            hintText: 'Message (optional)'.hardCoded,
          ),
        ),
      ],
    );
  }
}