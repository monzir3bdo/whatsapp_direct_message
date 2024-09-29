import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/core/routes/base_route.dart';
import 'package:whatsapp_direct_message/screens/home_screen.dart';
import 'package:whatsapp_direct_message/screens/settings_screen.dart';

class AppRoutes {
  static const homeScreen = '/';
  static const settingsScreen = '/settings';

  static BaseRoute onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeScreen:
        return BaseRoute(
          screen: BlocProvider(
            create: (context) => SendMessageCubit(),
            child: const HomeScreen(),
          ),
        );
      case settingsScreen:
        return BaseRoute(screen: const SettingsScreen());

      default:
        return BaseRoute(screen: const HomeScreen());
    }
  }
}
