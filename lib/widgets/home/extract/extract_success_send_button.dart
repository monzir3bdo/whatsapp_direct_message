import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

import '../../../core/localization/lang_keys.dart';

class ExtractSuccessSendButton extends StatelessWidget {
  const ExtractSuccessSendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
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
    );
  }
}
