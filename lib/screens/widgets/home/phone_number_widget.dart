import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

import 'show_country_picker.dart';

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
        style: TextStyle(
          color: context.color.textColor,
          fontSize: 18,
        ));
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


