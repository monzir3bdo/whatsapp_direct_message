import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/widgets/home/paste_dialog.dart';

class PasteButton extends StatelessWidget {
  const PasteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => ExtractTextCubit(),
                ),
                BlocProvider(
                  create: (context) => ExtractSuccessCubit(),
                ),
              ],
              child: const PasteDialog(),
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.translate(LangKeys.paste),
            style: AppTextStyles.medium14
                .copyWith(color: AppLightColors.backgroundColor),
          ),
          const Gap(5),
          const Icon(
            Icons.paste,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}
