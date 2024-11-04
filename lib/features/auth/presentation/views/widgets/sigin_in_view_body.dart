import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/core/utils/widgets/custom_text_field.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/custom_divider.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/social_login_item_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../onBoarding/presentation/views/widgets/forget_password.dart';

class SiginInViewBody extends StatefulWidget {
  const SiginInViewBody({super.key});

  @override
  State<SiginInViewBody> createState() => _SiginInViewBodyState();
}

class _SiginInViewBodyState extends State<SiginInViewBody> {
  bool isvisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your account.',
            style: AppTextStyles.semiBold16.copyWith(fontSize: 37),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Please sign in to your account ',
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF878787),
            ),
          ),
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
            height: 12,
          ),
          const ForgetPassword(),
          const SizedBox(
            height: 16,
          ),
          CustomButton(title: "Sigin In", onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
          const CustomDivider(),
          const SizedBox(
            height: 25,
          ),
          const SocialLoginItemListView(),
        ],
      ),
    );
  }
}
