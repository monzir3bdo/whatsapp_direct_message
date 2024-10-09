import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/extensions/build_context_extension.dart';

class OnboardingChangeLanguage extends StatelessWidget {
  const OnboardingChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<AppCubit>().changeLocale();
      },
      icon: Icon(
        Icons.language,
        color: context.color.textColor,
        size: 25,
      ),
    );
  }
}
