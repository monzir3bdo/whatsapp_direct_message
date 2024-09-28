import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark =
      HiveDatabase.instance.isDark!.get(darkKey, defaultValue: false)!;
  bool saveNumber = HiveDatabase.instance.isSaveEnabled!
      .get(saveEnabledKey, defaultValue: true)!;

  void changeTheme() async {
    isDark = !isDark;
    await HiveDatabase.instance.isDark!.put(darkKey, isDark);
    emit(AppState.themeModeChange(isDark: isDark));
  }

  void toggleSaveNumber() async {
    saveNumber = !saveNumber;
    await HiveDatabase.instance.isSaveEnabled!.put(saveEnabledKey, saveNumber);
    emit(AppState.saveNumbersChanged(save: saveNumber));
  }
}
