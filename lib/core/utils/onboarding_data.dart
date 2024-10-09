import 'package:whatsapp_direct_message/core/localization/lang_keys.dart';
import 'package:whatsapp_direct_message/generated/assets.dart';
import 'package:whatsapp_direct_message/models/onboarding_model.dart';

const List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: LangKeys.onboarding1Title,
    subtitle: LangKeys.onboarding1Subtitle,
    image: Assets.imagesOnboarding1,
  ),
  OnboardingModel(
    title: LangKeys.onboarding2Title,
    subtitle: LangKeys.onboarding2Subtitle,
    image: Assets.imagesOnboarding2,
  ),
  OnboardingModel(
    title: LangKeys.onboarding3Title,
    subtitle: LangKeys.onboarding3Subtitle,
    image: Assets.imagesOnboarding3,
  ),
];
