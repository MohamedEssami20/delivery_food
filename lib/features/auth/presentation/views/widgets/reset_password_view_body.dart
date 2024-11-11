import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_app_bar.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  bool isNewPasswordChecked = false;
  bool inConfirmPasswordChecked = false;
  String? password, confirmPassword;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Form(
        key: _formKey,
        autovalidateMode: autovalidateMode,
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
              obscureText: isNewPasswordChecked,
              validator: validateNewPassword,
              onSved: (value) {
                password = value;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isNewPasswordChecked = !isNewPasswordChecked;
                  });
                },
                icon: isNewPasswordChecked
                    ? const Icon(
                        Icons.remove_red_eye,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
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
              obscureText: inConfirmPasswordChecked,
              onSved: (value) {
                confirmPassword = value;
              },
              validator: validateConfirmPassword,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    inConfirmPasswordChecked = !inConfirmPasswordChecked;
                  });
                },
                icon: inConfirmPasswordChecked
                    ? const Icon(
                        Icons.remove_red_eye,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
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
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? validateConfirmPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your confirm password';
    } else if (value.isNotEmpty && value.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (password != confirmPassword) {
      return 'Password does not match';
    }
    return null;
  }

  String? validateNewPassword(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your new password';
    } else if (value.isNotEmpty && value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }
}
