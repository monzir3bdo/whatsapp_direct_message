import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';
import 'package:whatsapp_direct_message/models/contact_model.dart';
import 'package:whatsapp_direct_message/widgets/history/history_add_label_title.dart';

class HistoryAddLabelWidget extends StatefulWidget {
  const HistoryAddLabelWidget({super.key, required this.contact});
  final ContactModel contact;

  @override
  State<HistoryAddLabelWidget> createState() => _HistoryAddLabelWidgetState();
}

class _HistoryAddLabelWidgetState extends State<HistoryAddLabelWidget> {
  TextEditingController labelController = TextEditingController();
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
      padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HistoryAddLabelTitle(),
          TextField(
            controller: labelController,
            onTapOutside: (pointer) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
          AppButton(
            onPressed: () {
              widget.contact.name = labelController.text;
              widget.contact.save();
              context.read<HistoryBloc>().add(const HistoryEvent.getContacts());
              context.pop();
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
    );
  }
}
