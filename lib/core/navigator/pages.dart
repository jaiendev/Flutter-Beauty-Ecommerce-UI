// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lotus_application/core/navigator/app_navigator.dart';
import 'package:lotus_application/core/navigator/routes.dart';
import 'package:lotus_application/core/navigator/scaffold_wrapper.dart';
import 'package:lotus_application/core/navigator/transition_routes.dart';
import 'package:lotus_application/features/home/screens/home_screen.dart';

// Project imports:

class Pages extends RouteObserver<PageRoute<dynamic>> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static GlobalKey<NavigatorState> navigatorAccountKey = GlobalKey();

  Route<dynamic> getRoute(RouteSettings settings) {
    // Map<String, dynamic>? arguments = _getArguments(settings);
    switch (settings.name) {
      case Routes.root:
        return _buildRoute(
          settings,
          const HomeScreen(),
        );
      default:
        return _buildRoute(
          settings,
          const HomeScreen(),
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

  static void navigatorAccountPop() {
    if (!canAccountPop) return;

    accountState?.pop();
  }

  // _getArguments(RouteSettings settings) {
  //   return settings.arguments;
  // }

  static void navigatorAccountPopToRoot() {
    accountState?.popUntil((route) => route.isFirst);
  }

  static bool get canPop => state.canPop();

  static bool get canAccountPop => accountState?.canPop() ?? true;

  static String? currentRoute() => AppNavigator.currentRouteName;

  static BuildContext? get context => navigatorKey.currentContext;

  static BuildContext? get accountContext => navigatorAccountKey.currentContext;

  static NavigatorState get state => navigatorKey.currentState!;

  static NavigatorState? get accountState => navigatorAccountKey.currentState;

  static bool getRouteTablet(String route) => [].contains(route);

  static bool shouldBeShowPopupInstrealOfScreen({required String route}) {
    return popupInstrealOfScreen.contains(route);
  }

  static List<String> popupInstrealOfScreen = [];
}
