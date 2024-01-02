import 'package:doct_omar_yt/core/di/dependency_injection.dart';
import 'package:doct_omar_yt/features/login/logic/cubit/login_cubit.dart';
import 'package:doct_omar_yt/features/login/ui/login_screen.dart';
import 'package:doct_omar_yt/features/onBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import 'routes.dart';

class AppRoutes {
  Route generateRoute(RouteSettings settings) {
    // this argument to be passed in any screen like (argument as classname)
    //argument used to pass data from one screen to another
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (ctx) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (ctx) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (ctx) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
