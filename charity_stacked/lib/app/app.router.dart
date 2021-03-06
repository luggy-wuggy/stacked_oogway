// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:charity_stacked/ui/user_creation_flow/user_creation_flow_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/bottom_nav_root_view/bottom_nav_root_view.dart';
import '../ui/onboard/onboard_view.dart';

class Routes {
  static const String onboard = '/';
  static const String bottomNavRoot = '/bottom-nav-root';
  static const String userCreation = '/user-creation';
  static const all = <String>{
    onboard,
    bottomNavRoot,
    userCreation,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboard, page: Onboard),
    RouteDef(Routes.bottomNavRoot, page: BottomNavRoot),
    RouteDef(Routes.userCreation, page: UserCreation),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    Onboard: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Onboard(),
        settings: data,
      );
    },
    BottomNavRoot: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BottomNavRoot(),
        settings: data,
      );
    },
    UserCreation: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UserCreation(),
        settings: data,
      );
    },
  };
}
