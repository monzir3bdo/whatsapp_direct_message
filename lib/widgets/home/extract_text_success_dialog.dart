import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/core/widgets/app_text_field.dart';
import 'package:whatsapp_direct_message/widgets/home/international_phon_widget.dart';

class ExtractTextSuccessDialog extends StatelessWidget {
  const ExtractTextSuccessDialog({super.key, required this.numbers});
  final List<String> numbers;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: context.width * 0.8,
        color: context.color.containerColor,
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Form(
          key: context.read<ExtractSuccessCubit>().extractMessageKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<ExtractSuccessCubit, ExtractSuccessState>(
                builder: (context, state) {
                  return InternationalPhoneWidget(
                    initialValue:
                        context.read<ExtractSuccessCubit>().phoneNumber,
                    controller: context
                        .read<ExtractSuccessCubit>()
                        .phoneNumberController,
                    validator: (phoneNumber) {
                      phoneNumber!.length < 5
                          ? 'Enter a valid Phone number'
                          : null;
                    },
                  );
                },
              ),
              ...List.generate(
                numbers.length,
                (index) {
                  return GestureDetector(
                    onTap: () async {
                      context
                          .read<ExtractSuccessCubit>()
                          .changeNumber(numbers[index]);
                    },
                    child: Text(
                      numbers[index],
                      style: const TextStyle(color: AppLightColors.primary),
                    ),
                  );
                },
              ),
              AppTextField(
                hintText: 'You can Enter a Message',
                controller: TextEditingController(),
                minLines: 10,
              ),
              Gap(context.height * 0.01),
              AppButton(
                onPressed: () {
                  context.read<ExtractSuccessCubit>().sendMessage();
                },
                child: Text(
                  context.translate(
                    LangKeys.send,
                  ),
                  style: AppTextStyles.medium14.copyWith(
                    fontSize: 12,
                  ),
                ),
              ),
              Gap(context.height * 0.01)
            ],
          ),
        ),
      ),
    );
  }
}
