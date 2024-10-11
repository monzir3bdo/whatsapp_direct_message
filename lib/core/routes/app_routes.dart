import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/onboarding/onboarding_cubit.dart';
import 'package:whatsapp_direct_message/core/routes/base_route.dart';
import 'package:whatsapp_direct_message/screens/home_screen.dart';
import 'package:whatsapp_direct_message/screens/onboarding_screen.dart';
import 'package:whatsapp_direct_message/screens/settings_screen.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const home = '/home';
  static const settingsScreen = '/settings';

  static BaseRoute onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case onboarding:
        return BaseRoute(
          screen: BlocProvider(
            create: (context) => OnboardingCubit(),
            child: const OnboardingScreen(),
          ),
        );
      case home:
        return BaseRoute(screen: const HomeScreen());
      case settingsScreen:
        return BaseRoute(screen: const SettingsScreen());

      default:
        return BaseRoute(screen: const HomeScreen());
    }
  }
}
