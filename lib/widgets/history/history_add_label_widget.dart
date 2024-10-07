import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/core/widgets/app_text_field.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_add_label_title.dart';

import '../../core/functions/functions.dart';

class HistoryAddLabelWidget extends StatefulWidget {
  const HistoryAddLabelWidget({super.key, required this.contact});
  final ContactModel contact;

  @override
  State<HistoryAddLabelWidget> createState() => _HistoryAddLabelWidgetState();
}

class _HistoryAddLabelWidgetState extends State<HistoryAddLabelWidget> {
  TextEditingController labelController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    labelController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      decoration: BoxDecoration(
          color: context.color.containerColor,
          borderRadius: BorderRadius.circular(6)),
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 20,
      ),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HistoryAddLabelTitle(),
            AppTextField(
              hintText: context.translate(LangKeys.labelHint),
              controller: labelController,
              validator: (value) {
                if (value!.isEmpty) {
                  return context.translate(LangKeys.labelRequired);
                }
                return null;
              },
            ),
            AppButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  incrementTapCount();
                  widget.contact.name = labelController.text;
                  widget.contact.save();
                  context
                      .read<HistoryBloc>()
                      .add(const HistoryEvent.getContacts());
                  context.pop();
                }
              },
              child: Text(
                context.translate(LangKeys.save),
                style: AppTextStyles.medium14
                    .copyWith(color: AppLightColors.backgroundColor),
              ),
            ),
            const Gap(5),
          ],
        ),
      ),
    );
  }
}
