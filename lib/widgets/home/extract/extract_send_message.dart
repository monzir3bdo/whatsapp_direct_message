import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/widgets/app_text_field.dart';

class ExtractSendMessage extends StatelessWidget {
  const ExtractSendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: context.translate(LangKeys.youCanEnterAMessage),
      controller: context.read<ExtractSuccessCubit>().messageController,
      minLines: 10,
    );
  }
}
