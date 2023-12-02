import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/routs.dart';
import 'package:flutter_complete_project/features/presentation/pages/login/login_page.dart';
import 'package:flutter_complete_project/features/presentation/pages/onBoarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const OnBoardingScreen();
          },
        );
      case Routs.loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginScreen();
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Text("No route defined for ${settings.name}"),
            );
          },
        );
    }
  }
}
