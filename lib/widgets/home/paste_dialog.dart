import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/widgets/home/phone_number_widget.dart';
import 'package:whatsapp_direct_message/widgets/home/send_copied.dart';

import '../../blocs/send/send_message_cubit.dart';
import 'copied_text_message_widgets.dart';
import 'paste_text_field.dart';

class PasteDialog extends StatelessWidget {
  const PasteDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SendMessageCubit>(
      create: (context) => SendMessageCubit(),
      child: BlocBuilder<SendMessageCubit, SendMessageState>(
          builder: (context, state) {
        return Dialog(
          backgroundColor: context.color.containerColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          child: state == const SendMessageState.generateNumbersIsLoading()
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Form(
                  key: context.read<SendMessageCubit>().pasteFormKey,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PhoneTitle(
                          title: context
                              .translate(LangKeys.extractPhoneNumberFromText),
                        ),
                        const Gap(15),
                        const PasteTextField(),
                        const Gap(10),
                        context.read<SendMessageCubit>().phoneNumbers.isNotEmpty
                            ? Column(
                                children: context
                                    .read<SendMessageCubit>()
                                    .phoneNumbers
                                    .map((phoneNumber) {
                                  return TextButton(
                                    onPressed: () {
                                      context
                                          .read<SendMessageCubit>()
                                          .copiedPhoneController
                                          .text = phoneNumber;
                                    },
                                    child: PhoneTitle(title: phoneNumber),
                                  );
                                }).toList(),
                              )
                            : const SizedBox(),
                        const Gap(10),
                        const CopiedMessageWidgets(),
                        const Gap(15),
                        const SendPastedWidgets(),
                      ],
                    ),
                  ),
                ),
        );
      }),
    );
  }
}
