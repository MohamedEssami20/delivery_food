import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class DontRecieveCode extends StatelessWidget {
  const DontRecieveCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'Didn’t receive code?',
                  style: AppTextStyles.medium14.copyWith(
                    color: const Color(0xFF878787),
                  )),
              const TextSpan(
                text: ' ',
                style: AppTextStyles.regular16,
              ),
              TextSpan(
                text: 'Resend',
                style: AppTextStyles.semiBold14.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
