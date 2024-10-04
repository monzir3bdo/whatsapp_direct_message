import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/widgets/app_text_field.dart';

class ExtractTextDialog extends StatelessWidget {
  const ExtractTextDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: context.color.containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.translate(LangKeys.extractPhoneNumberFromText),
              style: AppTextStyles.bold16.copyWith(
                color: context.color.textColor,
                fontSize: 13,
              ),
            ),
            Gap(context.height * 0.02),
            AppTextField(
              hintText: context.translate(LangKeys.pasteTheTextHere),
              controller: context.read<ExtractTextCubit>().pasteController,
              onChanged: (value) async {
                await Future.delayed(
                  const Duration(milliseconds: 350),
                  () {
                    if (context.mounted) {
                      context
                          .read<ExtractTextCubit>()
                          .extractPhoneNumbersFromText(value);
                    }
                  },
                );
              },
              minLines: 10,
            ),
            Gap(context.height * 0.01),
          ],
        ),
      ),
    );
  }
}
