import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

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
      textStyle: AppTextStyles.medium14.copyWith(
          fontSize: 12,
          color: context.read<AppCubit>().isDark
              ? const Color(0xff616161)
              : const Color(0xffd7d7d7)),
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
