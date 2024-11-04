import 'package:delivery_food/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/features/splash/presentation/views/splash_view.dart';

import '../../../features/auth/presentation/views/forget_password_view.dart';
import '../../../features/auth/presentation/views/sigin_in_view.dart';
import '../../../features/auth/presentation/views/sign_up_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case SiginInView.routeName:
      return MaterialPageRoute(builder: (context) => const SiginInView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case ForgetPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const ForgetPasswordView());
    // Add more routes here as needed
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
