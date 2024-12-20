import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import '../../core/localization/lang_keys.dart';

class InternationalPhoneWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(PhoneNumber)? onInputChanged;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final PhoneNumber? initialValue;
  const InternationalPhoneWidget({
    super.key,
    required this.controller,
    this.onInputChanged,
    this.validator,
    this.suffix,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.read<AppCubit>().isDark
              ? AppLightColors.backgroundColor.withOpacity(0.1)
              : AppDarkColors.backgroundColor.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: InternationalPhoneNumberInput(
          formatInput: false,
          inputDecoration: InputDecoration(
              suffixIcon: suffix,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              hintStyle: AppTextStyles.medium14
                  .copyWith(fontSize: 12, color: context.color.textColor)),
          textFieldController: controller,
          hintText: context.translate(LangKeys.enterPhoneNumber),
          textStyle: AppTextStyles.medium14
              .copyWith(fontSize: 12, color: context.color.textColor),
          selectorTextStyle: TextStyle(color: context.color.textColor),
          onInputChanged: onInputChanged,
          onInputValidated: (bool value) {},
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          ),
          validator: validator,
          initialValue: initialValue ?? PhoneNumber(isoCode: 'SD'),
        ),
      ),
    );
  }
}
