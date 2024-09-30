import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, this.child,  this.onpressed});
  final void Function()? onpressed;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: context.width,
      child: ElevatedButton(
        onPressed: onpressed,
        child: child,
      ),
    );
  }
}