import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';

class OtpViewBody extends StatelessWidget {
  const OtpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => const Padding(
                padding: EdgeInsets.all(16),
                child: OtpTextField(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
