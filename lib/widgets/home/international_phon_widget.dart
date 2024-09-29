import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

import '../../core/localization/lang_keys.dart';

class InternationalPhoneWidget extends StatelessWidget {
  const InternationalPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: InternationalPhoneNumberInput(
        hintText: context.translate(LangKeys.enterPhoneNumber),
        selectorTextStyle: TextStyle(color: context.color.textColor),
        onInputChanged: (PhoneNumber number) {},
        onInputValidated: (bool value) {},
        selectorConfig: const SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
      ),
    );
  }
}
