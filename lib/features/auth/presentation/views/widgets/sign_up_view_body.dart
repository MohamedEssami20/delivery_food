import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/core/utils/widgets/custom_text_field.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});
  @override
  State<SignUpViewBody> createState() => _SiginUpViewBodyState();
}

class _SiginUpViewBodyState extends State<SignUpViewBody> {
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginOrRegisterHeader(
                title: "Create your new account.",
                subTitle:
                    "Create an account to start looking for the food you like"),
            const SizedBox(
              height: 22,
            ),
            Text(
              'Email Address',
              style: AppTextStyles.medium14.copyWith(
                color: const Color(0xFF0F0F0F),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomTextField(
              hintText: "Enter Email",
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'User Name',
              style: AppTextStyles.medium14.copyWith(
                color: const Color(0xFF0F0F0F),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomTextField(
              hintText: "Enter Username",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Password',
              style: AppTextStyles.medium14.copyWith(
                color: const Color(0xFF0F0F0F),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              obscureText: isvisible,
              keyboardType: TextInputType.visiblePassword,
              hintText: "Enter Password",
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isvisible = !isvisible;
                  });
                },
                icon: isvisible
                    ? const Icon(Icons.visibility_off_outlined)
                    : const Icon(Icons.visibility_outlined),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(title: "Register", onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
            const DontHaveAccount(
              title: " Do have an account? ",
              subTitle: "Sign in",
            ),
          ],
        ),
      ),
    );
  }
}
