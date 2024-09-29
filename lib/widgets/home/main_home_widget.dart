import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PhoneNumberWidgets(),
          const Gap(
            20,
          ),
          const MessageWidgets(),
          const Gap(
            20,
          ),
          const SendWidgets(),
          const Gap(
            20,
          ),
          Text(
            context.translate(LangKeys.generateLinkToYourWhatsapp),
            style: AppTextStyles.medium14.copyWith(
              color: AppLightColors.primary,
            ),
          ),
          const Gap(
            10,
          ),
          const GenerateLinkWidgets()
        ],
      ),
    );
  }
}
