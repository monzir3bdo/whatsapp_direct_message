import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/blocs/history/get_history/history_bloc.dart';
import 'package:whatsapp_direct_message/core/app/app.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

void main() async {
  await HiveDatabase.instance.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HistoryBloc(),
          ),
          BlocProvider(
            create: (context) => AppCubit(),
          )
        ],
        child:  DevicePreview(
    enabled: !kReleaseMode,
          builder: (context) {
            return const App();
          }
        ),
      ),
    ),
  );
}
