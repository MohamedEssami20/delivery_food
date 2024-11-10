import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterHeader extends StatelessWidget {
  const LoginOrRegisterHeader(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold16.copyWith(fontSize: 37),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          subTitle,
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF878787),
          ),
        ),
      ],
    );
  }
}
