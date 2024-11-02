import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          height: 800,
          width: double.infinity,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesImageOnboardingBackground),
                fit: BoxFit.fill,
              ),
            ),
          )),
    );
  }
}
