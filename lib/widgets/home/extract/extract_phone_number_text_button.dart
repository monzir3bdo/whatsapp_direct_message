import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/widgets/home/extract/extract_phone_number_without_country_code.dart';

import '../../../core/theme/colors.dart';

class ExtractPhoneNumberTextButton extends StatelessWidget {
  const ExtractPhoneNumberTextButton({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        context.read<ExtractSuccessCubit>().changeNumber(number);
      },
      child: (!number.startsWith('+') && !number.startsWith('00'))
          ? ExtractPhoneNumberWithoutCountryCode(number: number)
          : Text(
              textDirection: TextDirection.ltr,
              number,
              style: const TextStyle(color: AppLightColors.primary),
            ),
    );
  }
}
