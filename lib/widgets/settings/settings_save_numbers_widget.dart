import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

import '../../core/theme/colors.dart';

class SettingsSaveNumbersWidget extends StatelessWidget {
  const SettingsSaveNumbersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.translate(LangKeys.saveNumbers),
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          CupertinoSwitch(
            value: context.read<AppCubit>().saveNumber,
            onChanged: (value) {
              if (context.read<AppCubit>().saveNumber) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: context.color.containerColor,
                        title: Text(
                            context.translate(LangKeys.stopSavingNumbers),
                            style: AppTextStyles.bold16
                                .copyWith(color: context.color.textColor)),
                        content: Text(
                            context.translate(LangKeys.stopSavingNumbersDesc),
                            style: AppTextStyles.medium14
                                .copyWith(color: context.color.textColor)),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(context.translate(LangKeys.cancel),
                                style: AppTextStyles.medium14
                                    .copyWith(color: context.color.textColor)),
                          ),
                          TextButton(
                            onPressed: () {
                              context.read<AppCubit>().toggleSaveNumber();
                              context
                                  .read<HistoryBloc>()
                                  .add(const HistoryEvent.getContacts());
                              Navigator.pop(context);
                            },
                            child: Text(context.translate(LangKeys.stop),
                                style: AppTextStyles.medium14.copyWith(
                                  color: AppLightColors.red,
                                )),
                          ),
                        ],
                      );
                    });
              } else {
                context.read<AppCubit>().toggleSaveNumber();
                context
                    .read<HistoryBloc>()
                    .add(const HistoryEvent.getContacts());
              }
            },
          ),
        ],
      ),
    );
  }
}
