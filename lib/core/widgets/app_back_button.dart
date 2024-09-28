import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
          shape: const CircleBorder(), color: context.color.containerColor),
      child: const Center(child: Icon(Icons.arrow_back_ios_new_sharp)),
    );
  }
}
