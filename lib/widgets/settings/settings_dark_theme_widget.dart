import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/extensions/string_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/widgets/settings/settings_container.dart';

class SettingsDarkThemeWidget extends StatelessWidget {
  const SettingsDarkThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            context.translate(LangKeys.darkTheme),
            style:
                AppTextStyles.medium14.copyWith(color: context.color.textColor),
          ),
          CupertinoSwitch(
              value: context.read<AppCubit>().isDark,
              onChanged: (value) {
                context.read<AppCubit>().changeTheme();
              }),
        ],
      ),
    );
  }
}
