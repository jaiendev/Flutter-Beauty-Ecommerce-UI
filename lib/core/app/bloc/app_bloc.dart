// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotus_application/core/injections/injection_container.dart';
import 'package:lotus_application/features/home/presentation/blocs/home/home_bloc.dart';

class AppBloc {
  static final HomeBloc homeBloc = getIt<HomeBloc>();
  static final List<BlocProvider> providers = [
    BlocProvider<HomeBloc>(
      create: (context) => homeBloc,
    ),
  ];

  ///Singleton factory
  static final AppBloc _instance = AppBloc._internal();

  factory AppBloc() {
    return _instance;
  }

  static void dispose() {
    homeBloc.close();
  }

  static void initBlocWithAuth() {}

  AppBloc._internal();
}
