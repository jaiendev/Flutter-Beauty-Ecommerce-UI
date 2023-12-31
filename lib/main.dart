import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lotus_application/core/injections/injection_container.dart';
import 'package:lotus_application/features/app/presentation/screens/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  PaintingBinding.instance.imageCache.maximumSizeBytes =
      1024 * 1024 * 300; // 300 MB
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  // Init dependency injection
  configureDependencies();
  runApp(const MyApp());
}
