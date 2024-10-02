import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_success/extract_success_cubit.dart';
import 'package:whatsapp_direct_message/blocs/extract/extract_text/extract_text_cubit.dart';
import 'package:whatsapp_direct_message/widgets/home/extract_text_dialog.dart';
import 'package:whatsapp_direct_message/widgets/home/extract_text_empty_dialog.dart';
import 'package:whatsapp_direct_message/widgets/home/extract_text_success_dialog.dart';

class NewPasteDialog extends StatelessWidget {
  const NewPasteDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExtractTextCubit, ExtractTextState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const CircularProgressIndicator();
          },
          empty: () {
            return const ExtractTextEmptyDialog();
          },
          success: (numbers) {
            return BlocProvider(
              create: (context) => ExtractSuccessCubit(),
              child: ExtractTextSuccessDialog(numbers: numbers),
            );
          },
          orElse: () {
            return const ExtractTextDialog();
          },
        );
      },
    );
  }
}
