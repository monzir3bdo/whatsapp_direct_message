import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
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
        // PhoneWidget(),
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
    return Text(context.translate(LangKeys.phoneNumber),
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
          hintText: context.translate(LangKeys.enterPhoneNumber),
        ),
      ),
    );
  }
}
