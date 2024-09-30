part of 'generate_link_cubit.dart';

@freezed
class GenerateLinkState with _$GenerateLinkState {
  const factory GenerateLinkState.initial() = _Initial;
  const factory GenerateLinkState.loading() = _Loading;
  const factory GenerateLinkState.linkGenerated({required String link}) =
      _LinkGenerated;
  const factory GenerateLinkState.linkCleared() = _ClearLink;
}
