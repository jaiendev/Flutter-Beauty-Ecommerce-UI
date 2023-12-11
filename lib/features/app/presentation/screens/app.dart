import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_application/core/app/bloc/app_bloc.dart';
import 'package:lotus_application/core/navigator/pages.dart';
import 'package:lotus_application/core/navigator/routes.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBloc.providers,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            navigatorKey: NavigatorPages.navigatorKey,
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.authenication,
            navigatorObservers: [NavigatorObserver()],
            onGenerateRoute: (settings) {
              return NavigatorPages().getRoute(settings);
            },
          );
        },
      ),
    );
  }
}
