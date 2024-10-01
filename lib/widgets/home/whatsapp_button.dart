import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../core/theme/app_text_styels.dart';
import '../../core/theme/colors.dart';

class WhatsappButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String icon;
  const WhatsappButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: AppLightColors.primary),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text,
                style: AppTextStyles.medium14
                    .copyWith(fontSize: 14, color: Colors.white)),
            const Gap(5),
            SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
