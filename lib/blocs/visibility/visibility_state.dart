part of 'visibility_cubit.dart';

@freezed
class VisibilityState with _$VisibilityState {
  const factory VisibilityState.initial() = _Initial;
  const factory VisibilityState.visibilityChanged({required bool isVisible}) =
      _VisiblityChanged;
}
