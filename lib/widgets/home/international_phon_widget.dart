import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

import '../../core/localization/lang_keys.dart';

class InternationalPhoneWidget extends StatelessWidget {
  const InternationalPhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      textFieldController: context.read<SendMessageCubit>().phoneController,
      hintText: context.translate(LangKeys.enterPhoneNumber),
      selectorTextStyle: TextStyle(color: context.color.textColor),
      onInputChanged: (number) {
        context.read<SendMessageCubit>().phone = number.phoneNumber;
      },
      onInputValidated: (bool value) {},
      selectorConfig: const SelectorConfig(
        selectorType: PhoneInputSelectorType.DIALOG,
      ),
      validator: (phoneNumber) {
        if (phoneNumber!.length < 6) {
          return context.translate(LangKeys.enterPhoneNumber);
        }
        return null;
      },
    );
  }
}
