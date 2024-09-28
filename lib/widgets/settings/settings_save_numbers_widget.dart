import 'package:flutter/cupertino.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

class SettingsSaveNumbersWidget extends StatelessWidget {
  const SettingsSaveNumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Save Numbers'.hardCoded,
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          CupertinoSwitch(value: true, onChanged: (value) {}),
        ],
      ),
    );
    ;
  }
}
