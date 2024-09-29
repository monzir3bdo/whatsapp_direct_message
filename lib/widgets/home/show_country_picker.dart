import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import '../../../core/theme/colors.dart';

class ShowCountryPickerCheckBox extends StatelessWidget {
  const ShowCountryPickerCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            checkColor: AppLightColors.primary,
            activeColor: context.color.containerColor,
            value: true,
            onChanged: (value) {}),
        Text(
          context.translate(LangKeys.showCountryPicker),
          style: const TextStyle(
            color: AppLightColors.primary,
          ),
        )
      ],
    );
  }
}