// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotus_application/core/navigator/app_navigator.dart';
import 'package:lotus_application/core/navigator/routes.dart';
import 'package:lotus_application/core/navigator/scaffold_wrapper.dart';
import 'package:lotus_application/core/navigator/transition_routes.dart';
import 'package:lotus_application/features/auth/presentation/screens/authenication_screen.dart';
import 'package:lotus_application/features/home/presentation/screens/home.dart';

// Project imports:

class NavigatorPages extends RouteObserver<PageRoute<dynamic>> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.root:
        return _buildRoute(
          settings,
          const Home(),
        );
      case Routes.authenication:
        return _buildRoute(
          settings,
          const AuthenicationScreen(),
        );
      default:
        return _buildRoute(
          settings,
          const Home(),
        );
    }
  }

  _buildRoute(
    RouteSettings routeSettings,
    Widget builder,
  ) {
    return TransactionRoute(
      builder: (context) => ScaffoldWrapper(
        child: builder,
      ),
      settings: routeSettings,
    );
  }

  static Future? push<T>(
    String route, {
    Object? arguments,
  }) {
    late NavigatorState stateByContext;

    stateByContext = state;

    return stateByContext.pushNamed(route, arguments: arguments);
  }

  static Future pushNamedAndRemoveUntil<T>(
    String route, {
    Object? arguments,
  }) {
    if (route == Routes.root) {
      AppNavigator.resetRoutes();
    }

    return state.pushNamedAndRemoveUntil(
      route,
      (route) => false,
      arguments: arguments,
    );
  }

  static Future? replaceWith<T>(
    String route, {
    Map<String, dynamic>? arguments,
  }) {
    return state.pushReplacementNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String routeName) {
    state.popUntil((route) {
      if (route.isFirst) return true;

      return route.settings.name == routeName;
    });
  }

  static void pop({BuildContext? context}) {
    if (!canPop) return;

    state.pop();
  }

  static bool get canPop => state.canPop();

  static String? currentRoute() => AppNavigator.currentRouteName;

  static BuildContext? get context => navigatorKey.currentContext;

  static NavigatorState get state => navigatorKey.currentState!;

  static bool getRouteTablet(String route) => [].contains(route);

  static bool shouldBeShowPopupInstrealOfScreen({required String route}) {
    return popupInstrealOfScreen.contains(route);
  }

  static List<String> popupInstrealOfScreen = [];
}
