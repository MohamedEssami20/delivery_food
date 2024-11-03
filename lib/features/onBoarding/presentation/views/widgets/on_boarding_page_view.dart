import 'package:delivery_food/features/onBoarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: const [
        PageViewItem(),
        PageViewItem(),
        PageViewItem(),
      ],
    );
  }
}