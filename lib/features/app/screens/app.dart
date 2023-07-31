import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lotus_application/core/navigator/pages.dart';
import 'package:lotus_application/core/utils/after_layou_mixin.dart';
import 'package:lotus_application/features/app/screens/splash_screen.dart';
import 'package:lotus_application/features/auth/screens/authenication_screen.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AfterLayoutMixin {
  bool _isInitial = true;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          navigatorKey: NavigatorPages.navigatorKey,
          debugShowCheckedModeBanner: false,
          navigatorObservers: [NavigatorObserver()],
          onGenerateRoute: (settings) {
            return NavigatorPages().getRoute(settings);
          },
          home: _isInitial ? const SplashScreen() : const AuthenicationScreen(),
        );
      },
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        _isInitial = false;
      });
    });
  }
}
