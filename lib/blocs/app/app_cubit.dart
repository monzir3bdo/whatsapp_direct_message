import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = HiveDatabase.instance.isDark!.get(darkKey) ?? false;
  bool saveNumber = true;

  void changeTheme() {
    isDark = !isDark;
    HiveDatabase.instance.isDark!.put(darkKey, isDark);
    emit(AppState.themeModeChange(isDark: isDark));
  }

  void toggleSaveNumber() {
    saveNumber = !saveNumber;
    emit(AppState.saveNumbersChanged(save: saveNumber));
  }
}
