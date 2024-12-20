import 'package:delivery_food/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:delivery_food/features/profile/presentation/views/help_center_view.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/features/splash/presentation/views/splash_view.dart';
import '../../../features/auth/presentation/views/forget_password_view.dart';
import '../../../features/auth/presentation/views/otp_view.dart';
import '../../../features/auth/presentation/views/reset_password_view.dart';
import '../../../features/auth/presentation/views/sigin_in_view.dart';
import '../../../features/auth/presentation/views/sign_up_view.dart';
import '../../../features/cart/presentation/views/cart_view.dart';
import '../../../features/chat/presentation/views/chat_view.dart';
import '../../../features/home/presentation/views/details_view.dart';
import '../../../features/home/presentation/views/home_view.dart';
import '../../../features/home/presentation/views/notification_view.dart';
import '../../../features/payment/presentation/view/payment_view.dart';
import '../../../features/profile/presentation/views/app_settings.dart';
import '../../../features/profile/presentation/views/extra_card_view.dart';
import '../../../features/profile/presentation/views/personal_data_view.dart';
import '../../../features/profile/presentation/views/profile_view.dart';

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
      return MaterialPageRoute(
          builder: (context) => const ForgetPasswordView());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    case OtpView.routeName:
      return MaterialPageRoute(builder: (context) => const OtpView());

    case ResetPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const ResetPasswordView());

    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());

    case ChatView.routeName:
      return MaterialPageRoute(builder: (context) => const ChatView());

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());

    case DetailsView.routeName:
      return MaterialPageRoute(builder: (context) => const DetailsView());

    case NotificationView.routeName:
      return MaterialPageRoute(builder: (context) => const NotificationView());

    case PaymentView.routeName:
      return MaterialPageRoute(builder: (context) => const PaymentView());

    case AppSettingsView.routeName:
      return MaterialPageRoute(builder: (context) => const AppSettingsView());

    case PersonalDataView.routeName:
      return MaterialPageRoute(builder: (context) => const PersonalDataView());

    case HelpCenterView.routeName:
      return MaterialPageRoute(builder: (context) => const HelpCenterView());

    case ExtraCardView.routeName:
      return MaterialPageRoute(builder: (context) => const ExtraCardView());
    // Add more routes here as needed
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
