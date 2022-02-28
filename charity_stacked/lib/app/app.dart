import 'package:charity_stacked/services/authentication.dart';
import 'package:charity_stacked/ui/bottom_nav_root_view/bottom_nav_root_view.dart';
import 'package:charity_stacked/ui/onboard/onboard_view.dart';
import 'package:charity_stacked/ui/user_creation/user_creation_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: Onboard, initial: true),
    MaterialRoute(page: BottomNavRoot),
    MaterialRoute(page: UserCreation),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
  ],
)
class AppSetup {}
