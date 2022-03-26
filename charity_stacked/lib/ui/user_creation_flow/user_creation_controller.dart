import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/services/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stacked_services/stacked_services.dart';

class UserCreationFlowController extends ChangeNotifier {
  final _navigationService = locator<NavigationService>();

  void navigateToApp() {
    AuthenticationService.signInAnonymously();
    _navigationService.replaceWith(Routes.bottomNavRoot);
  }

  navigateBack() {
    _navigationService.back();
  }
}

final userCreationControllerProvider =
    ChangeNotifierProvider<UserCreationFlowController>((ref) {
  return UserCreationFlowController();
});
