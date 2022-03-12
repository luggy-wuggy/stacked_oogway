import 'package:charity_stacked/app/app.locator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardNotifier extends StateNotifier<OnboardAnimationState> {
  OnboardNotifier() : super(OnboardAnimationState.start);

  final _navigationService = locator<NavigationService>();

  void pushFromOnboard(String routeName) {
    state = OnboardAnimationState.push;

    Future.delayed(const Duration(milliseconds: 200), () {
      _navigationService.navigateTo(routeName);
    });
  }

  Future<void> popToOnboard() async {
    state = OnboardAnimationState.pop;
  }
}

enum OnboardAnimationState {
  start,
  push,
  pop,
}

final onboardNotifier =
    StateNotifierProvider<OnboardNotifier, OnboardAnimationState>((ref) {
  return OnboardNotifier();
});
