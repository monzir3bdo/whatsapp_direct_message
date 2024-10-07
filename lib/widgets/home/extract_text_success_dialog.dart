import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
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
        decoration: BoxDecoration(
          color: context.color.containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Form(
          key: context.read<ExtractSuccessCubit>().extractMessageKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<ExtractSuccessCubit, ExtractSuccessState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    phoneWithoutCountryCode: (number) {
                      return InternationalPhoneWidget(
                        suffix: IconButton(
                          onPressed: () {
                            context.read<ExtractTextCubit>().retry();
                          },
                          icon: const Icon(
                            CupertinoIcons.xmark,
                            color: Colors.red,
                          ),
                        ),
                        controller: context
                            .read<ExtractSuccessCubit>()
                            .phoneNumberController,
                        validator: (phoneNumber) {
                          phoneNumber!.length < 5
                              ? context.translate(LangKeys.enterPhoneNumber)
                              : null;
                        },
                      );
                    },
                    orElse: () {
                      return InternationalPhoneWidget(
                        suffix: IconButton(
                          onPressed: () {
                            context.read<ExtractTextCubit>().retry();
                          },
                          icon: const Icon(
                            CupertinoIcons.xmark,
                            color: Colors.red,
                          ),
                        ),
                        initialValue:
                            context.read<ExtractSuccessCubit>().phoneNumber,
                        controller: context
                            .read<ExtractSuccessCubit>()
                            .phoneNumberController,
                        validator: (phoneNumber) {
                          phoneNumber!.length < 5
                              ? context.translate(LangKeys.enterPhoneNumber)
                              : null;
                        },
                      );
                    },
                  );
                },
              ),
              const Gap(10),
              Text(
                '${context.translate(LangKeys.weFound)}(${numbers.length}) ${context.translate(LangKeys.phoneNumber)}',
                style: AppTextStyles.semiBold16
                    .copyWith(fontSize: 12, color: context.color.textColor),
              ),
              const Gap(10),
              ...List.generate(
                numbers.length,
                (index) {
                  return TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      context
                          .read<ExtractSuccessCubit>()
                          .changeNumber(numbers[index]);
                    },
                    child: (!numbers[index].startsWith('+') &&
                            !numbers[index].startsWith('00'))
                        ? Text(
                            textDirection: TextDirection.ltr,
                            '${numbers[index]}(${context.translate(LangKeys.withoutCountryCode)})',
                            style:
                                const TextStyle(color: AppLightColors.primary),
                          )
                        : Text(
                            textDirection: TextDirection.ltr,
                            numbers[index],
                            style:
                                const TextStyle(color: AppLightColors.primary),
                          ),
                  );
                },
              ),
              AppTextField(
                hintText: context.translate(LangKeys.youCanEnterAMessage),
                controller:
                    context.read<ExtractSuccessCubit>().messageController,
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
                    color: Colors.white,
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
