import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_project/core/di/dependency_injection.dart';
import 'package:weather_project/core/routing/routes.dart';
import 'package:weather_project/features/auth/logic/cubit/auth_cubit.dart';
import 'package:weather_project/features/auth/ui/auth_screen.dart';
import 'package:weather_project/features/auth/ui/widgets/login/login_screen.dart';
import 'package:weather_project/features/auth/ui/widgets/register/email_verification_screen.dart';
import 'package:weather_project/features/auth/ui/widgets/register/register_screen.dart';
import 'package:weather_project/features/home/ui/home_screen.dart';
import 'package:weather_project/features/onBoarding/ui/onBoarding_screen.dart';
import 'package:weather_project/features/splash/ui/splash_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      case Routes.emailVerification:
        return MaterialPageRoute(
            builder: (_) => const EmailVerificationScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<AuthCubit>(),
                  child: const RegisterScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
