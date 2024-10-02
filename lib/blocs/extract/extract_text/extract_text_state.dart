part of 'extract_text_cubit.dart';

@freezed
class ExtractTextState with _$ExtractTextState {
  const factory ExtractTextState.initial() = _Initial;
  const factory ExtractTextState.loading() = _Loading;
  const factory ExtractTextState.empty() = _Empty;
  const factory ExtractTextState.success({required List<String> numbers}) =
      _Success;
  const factory ExtractTextState.failure({required String message}) = _Failure;
}
