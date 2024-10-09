import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/send/send_message_cubit.dart';
import 'package:whatsapp_direct_message/blocs/visibility/visibility_cubit.dart';
import 'package:whatsapp_direct_message/widgets/home/main_home_widget.dart';

class HomeSend extends StatelessWidget {
  const HomeSend({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SendMessageCubit(),
        ),
        BlocProvider(
          create: (context) => VisibilityCubit(),
        ),
        BlocProvider(
          create: (context) => SendMessageCubit(),
        ),
      ],
      child: const HomeMainWidget(),
    );
  }
}
