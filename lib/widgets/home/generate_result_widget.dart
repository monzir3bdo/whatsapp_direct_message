import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';
import 'package:whatsapp_direct_message/core/functions/functions.dart';
import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/core/theme/app_text_styels.dart';
import 'package:whatsapp_direct_message/core/theme/colors.dart';
import 'package:whatsapp_direct_message/core/widgets/app_button.dart';

class GenerateResultWidget extends StatelessWidget {
  const GenerateResultWidget({super.key, required this.link});
  final String link;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      onPressed: () {
        incrementTapCount();
        copy(data: link);
        Fluttertoast.showToast(
          msg: "Link Copied",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      },
      child: Text(
        context.translate(LangKeys.copyYourLink),
        style: AppTextStyles.semiBold16.copyWith(
          color: AppLightColors.backgroundColor,
        ),
      ),
    );
  }
}
