import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

import '../../../core/theme/colors.dart';
import '../../blocs/visibility/visibility_cubit.dart';

class ShowCountryPickerCheckBox extends StatelessWidget {
  const ShowCountryPickerCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<VisibilityCubit, VisibilityState>(
          builder: (context, state) {
            return Checkbox(
              checkColor: AppLightColors.primary,
              fillColor: !HiveDatabase.instance.isDark!.get(darkKey)!
                  ? WidgetStatePropertyAll(Colors.black.withOpacity(0.1))
                  : WidgetStatePropertyAll(Colors.white.withOpacity(0.1)),
              side: BorderSide(color: Colors.black.withOpacity(0.2)),
              activeColor: context.color.containerColor,
              value: context.read<VisibilityCubit>().showCountryPicker,
              onChanged: (value) {
                context.read<VisibilityCubit>().toggleCountryPickerVisibility();
              },
            );
          },
        ),
        Text(
          context.translate(LangKeys.showCountryPicker),
          style: AppTextStyles.medium14.copyWith(
            fontSize: 12,
            color: AppLightColors.primary,
          ),
        )
      ],
    );
  }
}
