import 'package:charity_stacked/app/app.locator.dart';
import 'package:charity_stacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardModel extends BaseViewModel {
  bool isStartAnimate = true;

  final _navigationService = locator<NavigationService>();

  void navigateToUserCreation() async {
    isStartAnimate = false;
    notifyListeners();

    Future.delayed(Duration(milliseconds: 200), () {
      _navigationService.navigateTo(Routes.userCreation);
    });
  }
}
