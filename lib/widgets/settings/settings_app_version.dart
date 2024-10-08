import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

class SettingsAppVersion extends StatelessWidget {
  const SettingsAppVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.translate(LangKeys.appVersion),
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          FutureBuilder(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    snapshot.data!.version,
                    style: AppTextStyles.medium14
                        .copyWith(color: context.color.textColor),
                  );
                } else if (snapshot.hasError) {
                  return Text(
                    'Nan',
                    style: AppTextStyles.medium14
                        .copyWith(color: context.color.textColor),
                  );
                }

                return const CircularProgressIndicator();
              })
        ],
      ),
    );
  }
}
