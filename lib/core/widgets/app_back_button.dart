import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: Container(
        width: 35,
        height: 35,
        decoration: ShapeDecoration(
            shape: const CircleBorder(), color: context.color.containerColor),
        child: Center(
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: context.color.textColor,
            size: 25,
          ),
        ),
      ),
    );
  }
}
