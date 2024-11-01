import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/blocs/visibility/visibility_cubit.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/home/camera_button.dart';
import 'package:whatsapp_direct_message/widgets/home/show_country_picker.dart';

import '../../core/functions/functions.dart';
import '../../core/validators/validators.dart';
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
          mainAxisSize: MainAxisSize.min,
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
                        if (!isNumeric(phoneNumber ?? '')) {
                          return context
                              .translate(LangKeys.enterValidPhoneNumber);
                        }
                        if (phoneNumber!.length < 6) {
                          return context.translate(LangKeys.enterPhoneNumber);
                        }
                        return null;
                      }
                    : null,
                controller: context.read<SendMessageCubit>().phoneController,
                onInputChanged: (number) {
                  String convertedNumber =
                      convertToEnglishDigits(number.phoneNumber ?? '');
                  context.read<SendMessageCubit>().phone = convertedNumber;
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
      style: AppTextStyles.medium14
          .copyWith(fontSize: 12, color: context.color.textColor),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        context.read<SendMessageCubit>().phone = value;
      },
      maxLength: 15,
      decoration: InputDecoration(
        suffixIcon: const CameraButton(),
        hintText: context.translate(LangKeys.enterPhoneNumber),
        hintStyle: AppTextStyles.regular12.copyWith(
          color:
              HiveDatabase.instance!.isDark!.get(darkKey, defaultValue: false)!
                  ? const Color(0xff808080)
                  : const Color(0xffbcbcbc),
        ),
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
