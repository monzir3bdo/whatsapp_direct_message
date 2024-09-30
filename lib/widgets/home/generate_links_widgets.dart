import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/generate/generate_link_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_or_copy_widget.dart';

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
              key: context.read<GenerateLinkCubit>().generateFormKey,
              child: InternationalPhoneWidget(
                suffix: BlocBuilder<GenerateLinkCubit, GenerateLinkState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      linkGenerated: (_) {
                        return IconButton(
                          onPressed: () {
                            context.read<GenerateLinkCubit>().clearLink();
                          },
                          icon: const Icon(
                            CupertinoIcons.xmark,
                            color: AppLightColors.red,
                          ),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                    );
                  },
                ),
                validator: (phoneNumber) {
                  if (phoneNumber!.length < 6) {
                    return context.translate(LangKeys.enterPhoneNumber);
                  }
                  return null;
                },
                controller:
                    context.read<GenerateLinkCubit>().generateLinkController,
                onInputChanged: (number) {
                  context.read<GenerateLinkCubit>().phone = number.phoneNumber!;
                },
              ),
            ),
            Gap(context.height * 0.03),
            const GenerateOrCopyWidget(),
          ],
        ),
      ],
    );
  }
}
