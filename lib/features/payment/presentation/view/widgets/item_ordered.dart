import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ItemOrdered extends StatelessWidget {
  const ItemOrdered({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 130,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            image: const DecorationImage(
              image: AssetImage(Assets.assetsImagesProduct),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Burger With Meat',
              textAlign: TextAlign.center,
              style: AppTextStyles.semiBold16.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              '\$ 12,230',
              textAlign: TextAlign.center,
              style: AppTextStyles.bold16.copyWith(
                color: AppColor.primaryColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
