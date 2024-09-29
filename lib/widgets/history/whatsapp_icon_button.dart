import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/generated/assets.dart';

class WhatsappIconButton extends StatelessWidget {
  const WhatsappIconButton({super.key, this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      icon: SvgPicture.asset(
        Assets.svgWhatsapp,
        width: 30,
        height: 30,
        colorFilter:
            ColorFilter.mode(context.color.textColor!, BlendMode.srcIn),
      ),
    );
  }
}
