import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';
import 'product_rating_and_location.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(
                      Assets.assetsImagesProduct,
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Ordinary Burgers',
                textAlign: TextAlign.center,
                style: AppTextStyles.medium14
                    .copyWith(color: Colors.black, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            const ProductRatingAndLocation(),
            const SizedBox(height: 12),
            Text(
              '\$ 17,230',
              textAlign: TextAlign.start,
              style: AppTextStyles.semiBold16
                  .copyWith(color: AppColor.primaryColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
