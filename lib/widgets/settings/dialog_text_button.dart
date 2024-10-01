import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class DialogTextButton extends StatelessWidget {
  const DialogTextButton(
      {super.key, required this.text, required this.onPressed, this.textColor});
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text,
          style: AppTextStyles.medium14
              .copyWith(color: textColor ?? context.color.textColor)),
    );
  }
}
