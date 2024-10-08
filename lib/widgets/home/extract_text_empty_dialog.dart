import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

class ExtractTextEmptyDialog extends StatelessWidget {
  const ExtractTextEmptyDialog({super.key});

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Gap(context.height * 0.02),
            Text(
              context.translate(LangKeys.noNumberFound),
              style: AppTextStyles.medium14.copyWith(
                color: context.color.textColor,
              ),
            ),
            Gap(context.height * 0.02),
            Text(
              context.translate(LangKeys.enteredTextNotContainsNumber),
              style: AppTextStyles.semiBold16.copyWith(
                fontSize: 12,
                color: context.color.textColor,
              ),
              textAlign: TextAlign.center,
            ),
            Gap(context.height * 0.02),
            AppButton(
              onPressed: () {
                context.read<ExtractTextCubit>().retry();
              },
              child: Text(
                context.translate(
                  LangKeys.retry,
                ),
                style: AppTextStyles.semiBold16.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Gap(context.height * 0.01)
          ],
        ),
      ),
    );
  }
}
