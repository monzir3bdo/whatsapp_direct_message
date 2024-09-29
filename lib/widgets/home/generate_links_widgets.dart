import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class GenerateLinkWidgets extends StatelessWidget {
  const GenerateLinkWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: context.width * 0.5,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter phone number'.hardCoded,
                  hintStyle: AppTextStyles.medium14.copyWith(
                    color: const Color(0xff8c8c8c),
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.4,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Generate'.hardCoded,
                  style: AppTextStyles.medium14.copyWith(
                    fontSize: 16,
                    color: AppLightColors.backgroundColor,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Text('wa.me/+96654510255'.hardCoded,
              style: AppTextStyles.semiBold16.copyWith(
                color: AppLightColors.primary,
              )),
        ),
      ],
    );
  }
}
