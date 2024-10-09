import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        height: context.height * 0.5,
        width: context.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
