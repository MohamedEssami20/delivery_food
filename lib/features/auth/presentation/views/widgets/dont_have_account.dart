import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

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
                text: ' Do not have an account?',
                style: AppTextStyles.medium14.copyWith(color: Colors.black),
              ),
              const TextSpan(
                text: ' ',
                style: AppTextStyles.regular16,
              ),
              TextSpan(
                text: 'Register',
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