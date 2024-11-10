import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/core/utils/widgets/custom_text_field.dart';
import 'package:delivery_food/features/auth/presentation/views/otp_view.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginOrRegisterHeader(
              title: "Forgot Password?",
              subTitle:
                  "Enter your email address and we’ll send you confirmation code to reset your password"),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Enter Email",
            style: AppTextStyles.semiBold14,
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomTextField(
              hintText: "Enter your email", keyboardType: TextInputType.text),
          const SizedBox(
            height: 30,
          ),
          const Spacer(),
          CustomButton(
            title: "Continue",
            onPressed: () {
              Navigator.of(context).pushNamed(OtpView.routeName);
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
