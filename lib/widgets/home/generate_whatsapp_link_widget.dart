import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/generate/generate_link_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_link_to_your_whatsapp_title.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_links_widgets.dart';

class GenerateWhatsappLinkWidget extends StatelessWidget {
  const GenerateWhatsappLinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const GenerateLinkToYourWhatsappTitle(),
        Gap(context.height * 0.005),
        BlocProvider(
          create: (context) => GenerateLinkCubit(),
          child: const GenerateLinkWidgets(),
        ),
      ],
    );
  }
}
