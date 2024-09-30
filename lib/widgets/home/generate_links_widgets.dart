import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_button.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_result_widget.dart';

import '../../blocs/send/send_message_cubit.dart';
import '../../core/localization/lang_keys.dart';
import 'international_phon_widget.dart';

class GenerateLinkWidgets extends StatelessWidget {
  const GenerateLinkWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
              key: context.read<SendMessageCubit>().generateFormKey,
              child: InternationalPhoneWidget(
                validator: (phoneNumber) {
                  if (phoneNumber!.length < 6) {
                    return context.translate(LangKeys.enterPhoneNumber);
                  }
                  return null;
                },
                controller:
                    context.read<SendMessageCubit>().generateLinkController,
                onInputChanged: (number) {
                  context.read<SendMessageCubit>().phoneForGenerate =
                      number.phoneNumber;
                },
              ),
            ),
            Gap(context.height * 0.03),
            const GenerateButton(),
          ],
        ),
        Gap(context.height * 0.018),
        const GenerateResultWidget(),
      ],
    );
  }
}
