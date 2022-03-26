import 'package:charity_stacked/services/authentication.dart';
import 'package:charity_stacked/ui/bottom_nav_root_view/bottom_nav_root_view.dart';
import 'package:charity_stacked/ui/onboard/onboard_view.dart';
import 'package:charity_stacked/ui/user_creation_flow/user_creation_flow_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    CustomRoute(
      page: Onboard,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    MaterialRoute(page: BottomNavRoot),
    CustomRoute(
      page: UserCreation,
      durationInMilliseconds: 800,
      reverseDurationInMilliseconds: 600,
    ),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
  ],
)
class AppSetup {}
