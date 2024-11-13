import 'package:delivery_food/core/utils/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 120,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColor.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.assetsImagesBurger,
            width: 70,
            height: 70,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Burger",
            style: AppTextStyles.semiBold16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
