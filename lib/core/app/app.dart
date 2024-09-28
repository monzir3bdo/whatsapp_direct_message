import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';
import 'package:whatsapp_direct_message/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          onGenerateRoute: AppRoutes.onGenerate,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          themeMode: context.read<AppCubit>().isDark
              ? ThemeMode.dark
              : ThemeMode.light,
        );
      },
    );
  }
}
