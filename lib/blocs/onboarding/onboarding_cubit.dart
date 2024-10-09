import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whatsapp_direct_message/core/database/hive_data_base.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial());
  int currentPage = 0;
  PageController pageController = PageController();

  void updateCurrentPage(int pageIndex) {
    currentPage = pageIndex;
    emit(OnboardingState.onboardingPageChanged(page: pageIndex));
  }

  void changePage({required int pageIndex}) {
    pageController.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }

  void nextPage() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 400), curve: Curves.linear);
  }

  Future<void> markOnboardingCompleted() async {
    await HiveDatabase.instance.isOnboardingVisited!
        .put(isOnboardingVisitedKey, true);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
