part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeModeChange({required bool isDark}) =
      _ThemeModeChange;
  const factory AppState.languageChanged({required String language}) =
      _LanguageChanged;
  const factory AppState.saveNumbersChanged({required bool save}) =
      _SaveNumberChanged;
}
