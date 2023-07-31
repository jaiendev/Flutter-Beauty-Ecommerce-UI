// // Package imports:
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AppBloc {
//   static final AuthBloc authBloc = getIt<AuthBloc>();
//   static final List<BlocProvider> providers = [
//     BlocProvider<AuthBloc>(
//       create: (context) => authBloc,
//     ),
//   ];

//   ///Singleton factory
//   static final AppBloc _instance = AppBloc._internal();

//   factory AppBloc() {
//     return _instance;
//   }

//   static void dispose() {
//     authBloc.close();
//   }

//   static void initBlocWithAuth() {
//     authBloc.add(CheckLoginedEvent());
//   }

//   AppBloc._internal();
// }
