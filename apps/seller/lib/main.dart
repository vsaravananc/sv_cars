import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:seller/core/extension/context_extendsion.dart';
import 'package:seller/core/routes/routes.dart';
import 'package:seller/core/util/assets.dart';
import 'package:seller/core/util/dp_inject.dart';
import 'package:seller/theme/light_theme.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  DpInject.inject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Seller',
      themeMode: .light,
      builder: (context, child) {
        return MediaQuery.withNoTextScaling(child: child!);
      },
      theme:lightThemeData,
      routerConfig: Routes.routes,
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});


  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(2200.ms).then((_) {
        if (mounted) {
          context.go(Routes.home);
        }
      });
    });
    super.initState();
  }

  final double _size = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          height: _size,
          width: _size,
          cacheHeight: (_size * context.devicePixelRationOf)
              .toInt(),
          cacheWidth: (_size * context.devicePixelRationOf)
              .toInt(),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: .min,
          children: [
            Text(
              "CREATE BY SARAVANAN\nWITH ❤️",
              style: context.texTheme.bodyMedium
                  ?.copyWith(fontWeight: .w600, height: 1.3),
              textAlign: .center,
            ),
            const SizedBox(height: 2)
          ],
        ).animate(delay: 400.ms).moveY(begin: 2, end: 1).fade(),
      ),
    );
  }
}
