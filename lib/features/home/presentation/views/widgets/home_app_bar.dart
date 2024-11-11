import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class AppBarHomeView extends StatelessWidget {
  const AppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.assetsImagesHomeImage,
          //height: 180,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}