import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/blocs/visibility/visibility_cubit.dart';
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
    return BlocBuilder<VisibilityCubit, VisibilityState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PhoneTitle(title: context.translate(LangKeys.phoneNumber)),
            const SizedBox(
              height: 10,
            ),
            Visibility(
              visible: !context.read<VisibilityCubit>().showCountryPicker,
              child: const PhoneWidget(),
            ),
            Visibility(
              visible: context.read<VisibilityCubit>().showCountryPicker,
              child: InternationalPhoneWidget(
                validator: context.read<VisibilityCubit>().showCountryPicker
                    ? (phoneNumber) {
                        if (phoneNumber!.length < 6) {
                          return context.translate(LangKeys.enterPhoneNumber);
                        }
                        return null;
                      }
                    : null,
                controller: context.read<SendMessageCubit>().phoneController,
                onInputChanged: (number) {
                  context.read<SendMessageCubit>().phone = number.phoneNumber;
                  print(context.read<SendMessageCubit>().phone);
                },
              ),
            ),
            const ShowCountryPickerCheckBox(),
          ],
        );
      },
    );
  }
}

class PhoneTitle extends StatelessWidget {
  final String title;
  const PhoneTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: AppTextStyles.medium14.copyWith(color: AppLightColors.primary));
  }
}

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (value) {
        context.read<SendMessageCubit>().phone = value;
      },
      decoration: InputDecoration(
        hintText: context.translate(LangKeys.enterPhoneNumber),
      ),
      validator: context.read<VisibilityCubit>().showCountryPicker
          ? null
          : (phoneNumber) {
              if (phoneNumber!.length < 8) {
                return context.translate(LangKeys.enterPhoneNumber);
              }
              return null;
            },
    );
  }
}
