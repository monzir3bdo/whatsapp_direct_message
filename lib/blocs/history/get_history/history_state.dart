part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.empty() = _Empty;
  const factory HistoryState.historyDisable() = _HistoryDisabled;
  const factory HistoryState.success({required List<ContactModel> contacts}) =
      _Success;
  const factory HistoryState.failure({required String message}) = _Failure;
}
