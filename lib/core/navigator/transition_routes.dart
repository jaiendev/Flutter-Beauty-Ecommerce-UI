// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

class TransactionRoute<T> extends MaterialPageRoute<T> {
  TransactionRoute({
    required super.builder,
    required RouteSettings super.settings,
  });

  @override
  Duration get transitionDuration => const Duration(
        milliseconds: 1000,
      );

  @override
  @protected
  bool get hasScopedWillPopCallback {
    return Platform.isIOS;
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final PageTransitionsTheme theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(
      this,
      context,
      animation,
      secondaryAnimation,
      child,
    );
  }
}
