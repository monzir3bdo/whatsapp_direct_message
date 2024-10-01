import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/snack_bars.dart';

class SettingsRemoveHistory extends StatelessWidget {
  const SettingsRemoveHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text(context.translate(LangKeys.removeHistory)),
                  content: Text(
                      context.translate(LangKeys.areYouSureYouWantToRemoveTheHistory),
                      style: AppTextStyles.medium14.copyWith()),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(context.translate(LangKeys.cancel),
                          style: AppTextStyles.medium14.copyWith()),
                    ),
                    TextButton(
                      onPressed: () {
                        HiveDatabase.instance.history!.clear();
                        context
                            .read<HistoryBloc>()
                            .add(const HistoryEvent.getContacts());
                        SnackBars.showSucessSnackBar(
                          context,
                          context.translate(LangKeys.historyRemovedSuccessfully),
                        );
                        Navigator.pop(context);
                      },
                      child: Text(context.translate(LangKeys.remove),
                          style: AppTextStyles.medium14.copyWith(
                            color: AppLightColors.red,
                          )),
                    ),
                  ],
                );
              });
        },
        child: Text(
          context.translate(LangKeys.removeHistory),
          style: AppTextStyles.medium14.copyWith(
            color: AppLightColors.red,
          ),
        ),
      ),
    );
  }
}
