import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

class GenerateLinkWidgets extends StatelessWidget {
  const GenerateLinkWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: context.width * 0.5,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter phone number'.hardCoded,
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.4,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Generate'.hardCoded,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ))),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text('wa.me/+96654510255'.hardCoded,
              style: TextStyle(
                color: context.color.textColor,
                fontSize: 18,
              )),
        ),
      ],
    );
  }
}
