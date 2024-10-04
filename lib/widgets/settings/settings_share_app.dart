import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

class SettingsShareApp extends StatelessWidget {
  const SettingsShareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      onTap: () async {
        await Share.share(
            '${context.translate(LangKeys.shareText)} https://play.google.com/store/apps/details?id=com.whatsappdirectmessage.app');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.translate(LangKeys.shareTheApp),
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          Icon(Icons.arrow_forward_ios_sharp, color: context.color.textColor)
        ],
      ),
    );
  }
}
