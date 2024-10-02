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
        color: context.color.containerColor,
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
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
              onChanged: (value) {
                context
                    .read<ExtractTextCubit>()
                    .extractPhoneNumbersFromText(value);
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
