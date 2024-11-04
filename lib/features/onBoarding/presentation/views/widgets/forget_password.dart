import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Forget Password ?',
          textAlign: TextAlign.center,
          style: AppTextStyles.medium14.copyWith(color: AppColor.primaryColor),
        ),
      ],
    );
  }
}
