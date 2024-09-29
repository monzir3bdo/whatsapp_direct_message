import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';

class SettingsRemoveHistory extends StatelessWidget {
  const SettingsRemoveHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          HiveDatabase.instance.history!.clear();
          context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
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
