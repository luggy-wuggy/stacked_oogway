import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToUserCreation() {
    _navigationService.navigateTo(Routes.userCreation);
  }
}
