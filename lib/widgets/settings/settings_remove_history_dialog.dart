import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/snack_bars.dart';
import 'package:whatsapp_direct_message/widgets/settings/dialog_text_button.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_remove_history_dialog_content.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_remove_history_dialog_title.dart';

class SettingsRemoveHistoryDialog extends StatelessWidget {
  const SettingsRemoveHistoryDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      backgroundColor: context.color.containerColor,
      title: const SettingsRemoveHistoryDialogTitle(),
      content: const SettingsRemoveHistoryDialogContent(),
      actions: [
        DialogTextButton(
          text: context.translate(LangKeys.cancel),
          onPressed: () => {context.pop()},
        ),
        DialogTextButton(
          text: context.translate(LangKeys.remove),
          onPressed: () {
            HiveDatabase.instance.history!.clear();
            context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
            SnackBars.showSucessSnackBar(
              context,
              context.translate(LangKeys.historyRemovedSuccessfully),
            );
            Navigator.pop(context);
          },
          textColor: AppLightColors.red,
        ),
      ],
    );
  }
}
