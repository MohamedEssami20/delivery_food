import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductItemsListView extends StatelessWidget {
  const ProductItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
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
        return const ProductItem();
      },
    );
  }
}
