import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class SettingsContainer extends StatelessWidget {
  const SettingsContainer({super.key, this.child, this.onTap});
  final Widget? child;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.width,
        height: context.height * 0.09,
        padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
        decoration: BoxDecoration(
          color: context.color.containerColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: context.color.containerBorderColor!.withOpacity(0.15),
          ),
        ),
        child: child,
      ),
    );
  }
}
