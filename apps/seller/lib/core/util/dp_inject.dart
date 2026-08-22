import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

abstract final class DpInject {
  static void inject() {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    FlutterNativeSplash.remove();
  }
}
