import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/generate/generate_link_cubit.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_link_to_your_whatsapp_title.dart';
import 'package:whatsapp_direct_message/widgets/home/new_paste_widget.dart';

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
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PhoneNumberWidgets(),
              const MessageWidgets(),
              Gap(context.height * 0.005),
              const SendWidgets(),
              Gap(context.height * 0.005),
              const GenerateLinkToYourWhatsappTitle(),
              Gap(context.height * 0.005),
              BlocProvider(
                create: (context) => GenerateLinkCubit(),
                child: const GenerateLinkWidgets(),
              ),
              // Gap(context.height * 0.03),
              // const ExtractFromCopiedTextWidgets(),
              const Gap(20),
              const NewPasteWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
