import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/localization/app_localizations_setup.dart';
import 'package:whatsapp_direct_message/core/routes/app_routes.dart';
import 'package:whatsapp_direct_message/core/theme/app_theme.dart';

import '../database/hive_data_base.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withNoTextScaling(
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
<<<<<<< Updated upstream
            title: HiveDatabase.instance.selectedLanguage!.get(selectedLanguageKey,
                defaultValue: 'en') == 'en'? 'WhatsApp Direct Message': 'ارسل للواتساب',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoutes.onGenerate,
            title: HiveDatabase.instance.selectedLanguage!
                        .get(selectedLanguageKey) ==
                    'en'
                ? "Whatsapp Direct Message"
                : "ارسل للواتساب",
=======
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppRoutes.onGenerate,
>>>>>>> Stashed changes
            theme: lightTheme(),
            darkTheme: darkTheme(),
            locale: Locale(context.read<AppCubit>().locale),
            supportedLocales: AppLocalizationsSetup.supportedLocales,
<<<<<<< Updated upstream
            localizationsDelegates:
                AppLocalizationsSetup.localizationsDelegates,
=======
            localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
>>>>>>> Stashed changes
            localeResolutionCallback:
                AppLocalizationsSetup.localeResolutionCallback,
            themeMode: context.read<AppCubit>().isDark
                ? ThemeMode.dark
                : ThemeMode.light,
            initialRoute: HiveDatabase.instance.isOnboardingVisited!
                    .get(isOnboardingVisitedKey, defaultValue: false)!
                ? AppRoutes.home
                : AppRoutes.onboarding,
          );
        },
      ),
    );
  }
}
