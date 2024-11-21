import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ProductInfoItem extends StatelessWidget {
  const ProductInfoItem({super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColor.primaryColor,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF878787),
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}