import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';

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
          style: const TextStyle(
            color: AppLightColors.primary,
          ),
        )
      ],
    );
  }
}
