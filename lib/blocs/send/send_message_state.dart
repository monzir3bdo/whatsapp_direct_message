part of 'send_message_cubit.dart';

@freezed
class SendMessageState with _$SendMessageState {
  const factory SendMessageState.initial() = _Initial;
  const factory SendMessageState.loading() = _Loading;
  const factory SendMessageState.generateNumbersIsLoading() = _GenerateNumbersIsLoading;
  const factory SendMessageState.success() = _Success;

  const factory SendMessageState.failure({required String message}) = _Failure;
}
