import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';

import '../../core/theme/app_text_styels.dart';
import '../../core/theme/colors.dart';
import 'generate_links_widgets.dart';
import 'message_widgets.dart';
import 'phone_number_widget.dart';
import 'send_widget.dart';

class HomeMainWidget extends StatelessWidget {
  const HomeMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: context.read<SendMessageCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PhoneNumberWidgets(),
            const Gap(
              20,
            ),
            const MessageWidgets(),
            Gap(
              context.height * 0.035,
            ),
            const SendWidgets(),
            Gap(
              context.height * 0.03,
            ),
            Text(
              context.translate(LangKeys.generateLinkToYourWhatsapp),
              style: AppTextStyles.medium14.copyWith(
                color: AppLightColors.primary,
              ),
            ),
            Gap(
              context.height * 0.014,
            ),
            const GenerateLinkWidgets()
          ],
        ),
      ),
    );
  }
}
