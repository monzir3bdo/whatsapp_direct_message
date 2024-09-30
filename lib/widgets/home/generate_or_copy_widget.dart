import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/generate/generate_link_cubit.dart';
import 'package:whatsapp_direct_message/widgets/home/generate_result_widget.dart';

import 'generate_button.dart';

class GenerateOrCopyWidget extends StatelessWidget {
  const GenerateOrCopyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateLinkCubit, GenerateLinkState>(
      builder: (context, state) {
        return state.maybeWhen(
          linkGenerated: (link) {
            return GenerateResultWidget(link: link);
          },
          orElse: () {
            return const GenerateButton();
          },
        );
      },
    );
  }
}
