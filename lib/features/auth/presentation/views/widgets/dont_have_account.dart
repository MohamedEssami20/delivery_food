import 'package:delivery_food/features/auth/presentation/views/sign_up_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                text: title,
                style: AppTextStyles.medium14.copyWith(color: Colors.black),
              ),
              const TextSpan(
                text: ' ',
                style: AppTextStyles.regular16,
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
                text: subTitle,
                style: AppTextStyles.semiBold14
                    .copyWith(color: AppColor.primaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
