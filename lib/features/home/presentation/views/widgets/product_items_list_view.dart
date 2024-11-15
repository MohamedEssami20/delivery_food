import 'package:delivery_food/features/home/presentation/views/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../data/models/product_model.dart';
import '../../manager/category_cubit/category_cubit.dart';

class ProductItemsListView extends StatelessWidget {
  const ProductItemsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, int>(
      builder: (context, currentindex) {
        final products = getProducts(currentindex);
        return GridView.builder(
          clipBehavior: Clip.hardEdge,
          padding: const EdgeInsets.symmetric(vertical: 30),
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            final currentCategory = products[currentindex];
            final ProductModel productModel = currentCategory;
            return ProductItem(productModel: productModel);
          },
        );
      },
    );
  }

  List<ProductModel> getProducts(int currentIndex) {
    return [
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Bureger",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Sandwich",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza2",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza3",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza4",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza5",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
      ProductModel(
        image: Assets.assetsImagesProduct,
        title: "Pizza6",
        ratingCount: 4.5,
        distance: 120,
        price: "Rs. 1000",
      ),
    ];
  }
}
