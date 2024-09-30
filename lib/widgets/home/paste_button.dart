import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/widgets/home/paste_dialog.dart';
class PasteButton extends StatelessWidget {
  const PasteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const PasteDialog();
              });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.paste,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'Paste'.hardCoded,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}