import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/utils/app_text_styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 220 / 120,
            child: SvgPicture.asset(
              Assets.assetsImagesSplashImage,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome!",
            style: AppTextStyles.semiBold16,
          )
        ],
      ),
    );
  }
}
