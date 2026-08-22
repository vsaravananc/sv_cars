import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:seller/feature/home/presentation/page/home_page.dart';
import 'package:seller/feature/onboarding/presentation/page/get_started_page.dart';
import 'package:seller/feature/whitelist/presentation/pages/add_new_car.dart';
import 'package:seller/main.dart';

abstract final class Routes {
  static const String splash = '/';
  static const String home = '/home';
  static const String getStarted = '/getstarted';
  static const String addNewCar = '/addnewcar';
  static GoRouter get routes {
    return GoRouter(
      routes: [
        GoRoute(path: splash, builder: (context, state) => const SplashPage()),
        GoRoute(
          path: getStarted,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const GetStartedPage(),
              transitionsBuilder: (context, a, b, c) {
                return FadeTransition(opacity: a, child: c);
              },
            );
          },
        ),
        GoRoute(path: home, builder: (context, state) => const HomePage()),
        GoRoute(
          path: addNewCar,
          builder: (context, state) => const AddNewCar(),
        ),
      ],
    );
  }
}
