import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/home/paste_dialog.dart';

class NewPasteWidget extends StatelessWidget {
  const NewPasteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
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
      child: Container(
        width: context.width,
        height: 120,
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
          color: AppLightColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            const Icon(
              CupertinoIcons.doc_on_clipboard_fill,
              size: 45,
              color: Colors.white,
            ),
            const Gap(5),
            Text(
              'Paste Text And Get Number From it',
              style: AppTextStyles.semiBold16.copyWith(
                color: context.color.textColor,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
