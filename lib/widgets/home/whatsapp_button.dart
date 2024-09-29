import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

import '../../core/theme/colors.dart';

class WhatsappButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;
  const WhatsappButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppLightColors.primary),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Text(text,
              style: AppTextStyles.medium14
                  .copyWith(color: AppLightColors.backgroundColor)),
        ],
      ),
    );
  }
}
