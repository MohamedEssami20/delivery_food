import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../data/models/product_model.dart';
import 'product_rating_and_location.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
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
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(
                      productModel.image,
                    ),
                    fit: BoxFit.fitWidth),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                productModel.title,
                textAlign: TextAlign.center,
                style: AppTextStyles.medium14
                    .copyWith(color: Colors.black, fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            ProductRatingAndLocation(
              ratingCount: productModel.ratingCount,
              distance: productModel.distance,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                '\$ ${productModel.price}',
                textAlign: TextAlign.start,
                style: AppTextStyles.semiBold16
                    .copyWith(color: AppColor.primaryColor, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
