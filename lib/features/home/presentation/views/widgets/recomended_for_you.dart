import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../data/models/product_model.dart';
import 'product_item.dart';

class RecomendedForYou extends StatelessWidget {
  const RecomendedForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 1.1,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        final product = ProductModel(
          image: Assets.assetsImagesProduct,
          title: "Bureger",
          ratingCount: 4.5,
          distance: 120,
          price: "Rs. 1000",
        );
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ProductItem(productModel: product),
        );
      },
    );
  }
}
