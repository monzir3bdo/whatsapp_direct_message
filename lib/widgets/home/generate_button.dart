import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

import '../../blocs/send/send_message_cubit.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendMessageCubit, SendMessageState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const AppButton(
              child: CircularProgressIndicator(),
            );
          },
          orElse: () {
            return AppButton(
              onpressed: () async {
                if (context
                    .read<SendMessageCubit>()
                    .generateFormKey
                    .currentState!
                    .validate()) {
                  await context.read<SendMessageCubit>().generateLink(context);
                }
              },
              child: Text(
                context.translate(LangKeys.generate),
                style: AppTextStyles.medium14.copyWith(
                  fontSize: 16,
                  color: AppLightColors.backgroundColor,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
