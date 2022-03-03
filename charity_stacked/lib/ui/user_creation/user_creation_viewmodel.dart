import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:charity_stacked/services/authentication.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UserCreationModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToApp() {
    AuthenticationService.signInAnonymously();
    _navigationService.replaceWith(Routes.bottomNavRoot);
  }
}
