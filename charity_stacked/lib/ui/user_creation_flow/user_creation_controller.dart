import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stacked_services/stacked_services.dart';

class UserCreationFlowController extends ChangeNotifier {
  final PageController _pageController;

  UserCreationFlowController(
    this._pageController,
  );

  final _navigationService = locator<NavigationService>();

  PageController get pageController => _pageController;

  UserCreationPageType _currentPage = UserCreationPageType.values.first;
  UserCreationPageType get currentPage => _currentPage;

  void nextPage() {
    if (_currentPage != UserCreationPageType.values.last) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized,
      );
      _currentPage = UserCreationPageType.values[_currentPage.index + 1];
      notifyListeners();
    } else {
      _navigationService.replaceWith(Routes.bottomNavRoot);
      _resetPage();
    }
  }

  void previousPage() {
    if (_currentPage != UserCreationPageType.values.first) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubicEmphasized,
      );
      _currentPage = UserCreationPageType.values[_currentPage.index - 1];
      notifyListeners();
    } else {
      _navigationService.back();
      _resetPage();
    }
  }

  void _resetPage() {
    _currentPage = UserCreationPageType.values.first;
    _pageController.jumpTo(0);
    notifyListeners();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  // void navigateToApp() {
  //   AuthenticationService.signInAnonymously();
  //   _navigationService.replaceWith(Routes.bottomNavRoot);
  // }

  // navigateBack() {
  //   _navigationService.back();
  // }
}

final userCreationFlowControllerProvider =
    ChangeNotifierProvider<UserCreationFlowController>((ref) {
  return UserCreationFlowController(
    PageController(),
  );
});

enum UserCreationPageType {
  nickname,
  location,
  passion,
}
