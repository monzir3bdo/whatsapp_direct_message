import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import 'international_phon_widget.dart';

class GenerateLinkWidgets extends StatelessWidget {
  const GenerateLinkWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InternationalPhoneWidget(),
            const Gap(10),
            SizedBox(
              width: context.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  context.translate(LangKeys.generate),
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
          child: Text(context.translate(LangKeys.waMe96654510255),
              style: AppTextStyles.semiBold16.copyWith(
                color: AppLightColors.primary,
              )),
        ),
      ],
    );
  }
}
