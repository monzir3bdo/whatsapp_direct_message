import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
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
        TextFormField(
          maxLines: 4,
          minLines: 4,
          decoration: InputDecoration(
              hintText: context.translate(LangKeys.enterYourMessageOptional),
              hintStyle: AppTextStyles.medium14
                  .copyWith(fontSize: 12, color: const Color(0xff8c8c8c))),
        ),
      ],
    );
  }
}
