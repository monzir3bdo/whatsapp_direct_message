import 'package:flutter/material.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key,
      required this.hintText,
      this.maxLines,
      this.minLines,
      required this.controller,
      this.onChanged});
  final String hintText;
  final int? maxLines;
  final int? minLines;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (pointerDown) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      onChanged: onChanged,
      controller: controller,
      textDirection: HiveDatabase.instance.selectedLanguage!
                  .get(selectedLanguageKey, defaultValue: 'en') ==
              'en'
          ? TextDirection.ltr
          : TextDirection.rtl,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.medium14.copyWith(
          fontSize: 12,
          color: const Color(
            0xff8c8c8c,
          ),
        ),
      ),
      style: AppTextStyles.medium14
          .copyWith(fontSize: 12, color: context.color.textColor),
    );
  }
}
