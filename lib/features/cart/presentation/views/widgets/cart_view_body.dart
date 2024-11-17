import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(actions: SizedBox(), title: "Cart")
      ],
    );
  }
}