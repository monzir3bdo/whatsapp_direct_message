import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/widgets/home/paste_dialog.dart';

class PasteButton extends StatelessWidget {
  const PasteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onpressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return const PasteDialog();
            });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.translate(LangKeys.paste),
            style: AppTextStyles.medium14
                .copyWith(color: AppLightColors.backgroundColor),
          ),
          const Gap(5),
          const Icon(
            Icons.paste,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}
