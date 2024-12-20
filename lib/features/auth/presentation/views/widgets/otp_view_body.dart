import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/dont_recieve_code.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/otp_text_field.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/timer_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../reset_password_view.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(actions: SizedBox(), title: "OTP Verification"),
          const Padding(padding: EdgeInsets.only(top: 35)),
          const LoginOrRegisterHeader(
            title: "Email verification",
            subTitle:
                "Enter the verification code we send you on:Alberts******@gmail.com",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: OtpTextField(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          const DontRecieveCode(),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          const TimerWidget(),
          const Spacer(),
          SizedBox(
            height: 70,
            child: CustomButton(
              title: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, ResetPasswordView.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
