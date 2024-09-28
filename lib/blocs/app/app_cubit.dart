import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = false;
  void changeTheme() {
    isDark = !isDark;
    emit(AppState.themeModeChange(isDark: isDark));
  }
}
