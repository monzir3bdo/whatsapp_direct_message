import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class GoToSettingsButton extends StatelessWidget {
  const GoToSettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.06,
      width: context.width * 0.57,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        onPressed: () {
          context.pushNamed(AppRoutes.settingsScreen);
        },
        child: Text(
          context.translate(LangKeys.goToSettings),
          style: AppTextStyles.medium14.copyWith(
            color: AppLightColors.backgroundColor,
          ),
        ),
      ),
    );
  }
}
