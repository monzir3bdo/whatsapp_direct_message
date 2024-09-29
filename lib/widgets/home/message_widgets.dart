import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class MessageWidgets extends StatelessWidget {
  const MessageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.translate(LangKeys.message),
            style: AppTextStyles.medium14.copyWith(
              color: AppLightColors.primary,
            )),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: context.height * 0.18,
          child: TextFormField(
            maxLines: 10,
            minLines: 10,
            decoration: InputDecoration(
                hintText: context.translate(LangKeys.enterYourMessageOptional),
                hintStyle: AppTextStyles.medium14
                    .copyWith(fontSize: 12, color: const Color(0xff8c8c8c))),
          ),
        ),
      ],
    );
  }
}
