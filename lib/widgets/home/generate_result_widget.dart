import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

import '../../blocs/send/send_message_cubit.dart';

class GenerateResultWidget extends StatelessWidget {
  const GenerateResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: context.read<SendMessageCubit>().generatedLink == ''
          ? const SizedBox()
          : TextButton(
              onPressed: () => context.read<SendMessageCubit>().copyLink(),
              child: Text(context.translate(LangKeys.copyYourLink),
                  style: AppTextStyles.semiBold16.copyWith(
                    color: AppLightColors.primary,
                  )),
            ),
    );
  }
}
