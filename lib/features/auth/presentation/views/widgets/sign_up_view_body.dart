import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/core/utils/widgets/custom_text_field.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sigin_up_form.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});
  @override
  State<SignUpViewBody> createState() => _SiginUpViewBodyState();
}

class _SiginUpViewBodyState extends State<SignUpViewBody> {
  bool isvisible = true;
  bool isChecked = false;
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
            SiginUpForm(
              isVisible: isvisible,
              onTap: () {
                setState(() {
                  isvisible = !isvisible;
                });
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TermsAndConditions(
              isChecked: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(title: "Register", onPressed: () {}),
            const SizedBox(
              height: 16,
            ),
            DontHaveAccount(
              title: " Do have an account? ",
              subTitle: "Sign in",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
