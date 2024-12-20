import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/features/auth/data/models/user_model.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/dont_have_account.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/login_or_rigster_header.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sigin_up_form.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helper/func/on_click_signup_button.dart';
import '../../../data/models/sign_user_model.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});
  @override
  State<SignUpViewBody> createState() => _SiginUpViewBodyState();
}

class _SiginUpViewBodyState extends State<SignUpViewBody> {
  bool isvisible = true;
  bool isChecked = false;
  String? name, email, password;
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
                  "Create an account to start looking for the food you like",
            ),
            const SizedBox(
              height: 22,
            ),
            Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: SiginUpForm(
                onUserNameSaved: (value) {
                  name = value;
                },
                onEmailSaved: (value) {
                  email = value;
                },
                onPasswordSaved: (value) {
                  password = value;
                },
                isVisible: isvisible,
                onTap: () {
                  setState(() {
                    isvisible = !isvisible;
                  });
                },
              ),
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
            CustomButton(
              title: "Register",
              onPressed: () async {
                if (formKey.currentState!.validate()&& isChecked == true) {
                  formKey.currentState!.save();
                  await onClickSignUpButton(
                    signUserModel: SignUserModel(
                      context: context,
                      mounted: mounted,
                      userModel: UserModel(
                        email: email!,
                        password: password!,
                        userName: name!,
                      ),
                      isChecked: isChecked,
                    ),
                  );
                }
                else{
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {});
                }
              },
           
            ),
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
