import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/widgets/home/international_phon_widget.dart';

class ExtractPhoneWithCountryCode extends StatelessWidget {
  const ExtractPhoneWithCountryCode({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExtractSuccessCubit, ExtractSuccessState>(
      builder: (context, state) {
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
          initialValue: context.read<ExtractSuccessCubit>().phoneNumber,
          controller: context.read<ExtractSuccessCubit>().phoneNumberController,
          validator: (phoneNumber) {
            phoneNumber!.length < 5
                ? context.translate(LangKeys.enterPhoneNumber)
                : null;
          },
        );
      },
    );
  }
}
