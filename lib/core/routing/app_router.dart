import 'package:doc_advanced/core/di/independency_injection.dart';
import 'package:doc_advanced/core/routing/routes.dart';
import 'package:doc_advanced/featues/login/logic/login_cubit.dart';
import 'package:doc_advanced/featues/login/ui/login_screen.dart';
import 'package:doc_advanced/featues/onboarding/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create : (context) =>getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
