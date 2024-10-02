import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_text_field.dart';

import '../../blocs/send/send_message_cubit.dart';

class MessageWidgets extends StatelessWidget {
  const MessageWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.translate(LangKeys.message),
            style: AppTextStyles.medium14.copyWith(
              color: AppLightColors.primary,
            )),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: context.height * 0.18,
          child: AppTextField(
            controller: context.read<SendMessageCubit>().messageController,
            hintText: context.translate(LangKeys.enterYourMessageOptional),
            maxLines: 10,
            minLines: 10,
          ),
        ),
      ],
    );
  }
}
