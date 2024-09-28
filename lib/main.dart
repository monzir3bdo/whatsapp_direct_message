import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_direct_message/blocs/app/app_cubit.dart';
import 'package:whatsapp_direct_message/core/app/app.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

void main() async {
  await HiveDatabase.instance.init();
  runApp(
    BlocProvider(
      create: (context) => AppCubit(),
      child: const App(),
    ),
  );
}
