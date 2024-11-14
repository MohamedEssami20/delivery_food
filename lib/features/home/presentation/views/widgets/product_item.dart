import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 230,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage(
                      Assets.assetsImagesProduct,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
