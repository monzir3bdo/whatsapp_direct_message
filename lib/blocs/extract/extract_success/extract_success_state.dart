part of 'extract_success_cubit.dart';

@freezed
class ExtractSuccessState with _$ExtractSuccessState {
  const factory ExtractSuccessState.initial() = _Initial;
  const factory ExtractSuccessState.sendMessage() = _SendMessage;
  const factory ExtractSuccessState.phoneWithoutCountryCode(
      {required String phoneNumber}) = _PhoneWithoutCountryCode;
  const factory ExtractSuccessState.numberChanged(
      {required String phoneNumber}) = _NumberChanged;
}
