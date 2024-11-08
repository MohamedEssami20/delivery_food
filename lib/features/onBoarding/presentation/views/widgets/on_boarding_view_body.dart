import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/features/onBoarding/presentation/views/widgets/on_boarding_naviagtion.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          left: -30,
          child: Image.asset(
            Assets.assetsImagesImageOnboardingBackground,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * 0.4,
          left: 30,
          right: 30,
          child: const OnBoardingNavigation(),
        ),
      ],
    );
  }
}
