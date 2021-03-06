import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/services/authentication.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateBackToOnboard() {
    AuthenticationService.signOut();
    _navigationService.popUntil((route) => route.isFirst);
  }
}
