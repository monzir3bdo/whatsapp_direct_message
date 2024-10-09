part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.onboardingPageChanged({required int page}) =
      _OnboardingPageChanged;
}
