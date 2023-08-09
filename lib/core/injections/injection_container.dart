// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:lotus_application/core/injections/injection_container.config.dart';

// Project imports:

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);
