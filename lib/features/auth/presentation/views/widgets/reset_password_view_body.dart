import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_app_bar.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(actions: SizedBox(), title: "Reset Password"),
          const Padding(padding: EdgeInsets.only(top: 35)),
          const LoginOrRegisterHeader(
            title: "Reset Password",
            subTitle:
                "Your new password must be different from the previously used password",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80),
          ),
          Text(
            'New Password',
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF0F0F0F),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: "Enter New Password",
            keyboardType: TextInputType.text,
            obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 32)),
          Text(
            'Confirm Password',
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF0F0F0F),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            hintText: "Confirm Password",
            keyboardType: TextInputType.text,
            obscureText: true,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          const Spacer(),
          SizedBox(
            height: 70,
            child: CustomButton(
              title: "Verify Account",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
