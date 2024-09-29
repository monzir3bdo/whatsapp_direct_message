import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_button.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_result_widget.dart';

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
            const InternationalPhoneWidget(),
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
