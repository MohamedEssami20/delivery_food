import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/features/onBoarding/presentation/views/widgets/on_boarding_bottons.dart';
import 'package:delivery_food/features/onBoarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_dots_indicator.dart';

class OnBoardingNavigation extends StatefulWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  State<OnBoardingNavigation> createState() => _OnBoardingNavigationState();
}

class _OnBoardingNavigationState extends State<OnBoardingNavigation> {
  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: OnBoardingPageView(pageController: _pageController),
          ),
          const SizedBox(height: 16),
          CustomButtonDotsIndicator(currentPage: currentPage),
          const SizedBox(height: 80),
          OnBoardingButtons(
            pageController: _pageController,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
