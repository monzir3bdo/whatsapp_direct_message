import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/widgets/settings/dialog_text_button.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_save_number_dialog_content.dart';
import 'package:whatsapp_direct_message/widgets/settings/settins_save_number_dialog_title.dart';

class SettingsSaveNumbersTurnOffDialog extends StatelessWidget {
  const SettingsSaveNumbersTurnOffDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const SettingsSaveNumberDialogTitle(),
      content: const SettingsSaveNumberDialogContent(),
      actions: [
        DialogTextButton(
          text: context.translate(LangKeys.cancel),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        DialogTextButton(
          text: context.translate(LangKeys.stop),
          onPressed: () {
            context.read<AppCubit>().toggleSaveNumber();
            context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
            Navigator.pop(context);
          },
          textColor: AppLightColors.red,
        ),
      ],
    );
  }
}
