import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/home/show_country_picker.dart';

import 'international_phon_widget.dart';

class PhoneNumberWidgets extends StatelessWidget {
  const PhoneNumberWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneTitle(),
        SizedBox(
          height: 10,
        ),
        PhoneWidget(),
        InternationalPhoneWidget(),
        ShowCountryPickerCheckBox(),
      ],
    );
  }
}

class PhoneTitle extends StatelessWidget {
  const PhoneTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Phone Number'.hardCoded,
        style: AppTextStyles.medium14.copyWith(color: AppLightColors.primary));
  }
}

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Enter phone number'.hardCoded,
        ),
      ),
    );
  }
}
