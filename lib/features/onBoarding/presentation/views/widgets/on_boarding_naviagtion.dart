import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/features/onBoarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotsIndicator(
                position: currentPage.round(),
                dotsCount: 3,
                axis: Axis.horizontal,
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  color: const Color(0xFFC2C2C2),
                  size: const Size(32, 6),
                  activeSize: const Size(32, 6),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.59),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.59),
                  ),
                ),
              ),
            ],
          ),
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

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({
    super.key,
    required this.pageController,
  });
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Skip',
            style: AppTextStyles.semiBold14.copyWith(color: Colors.white),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: () {
              if(pageController.page == 2) {
               // Navigator.pushReplacementNamed(context, '/login');
              }
              else{
                pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
              }
            },
            child: Row(
              children: [
                Text(
                  'Next',
                  style: AppTextStyles.semiBold14.copyWith(color: Colors.white),
                ),
                const Icon(Icons.arrow_forward_ios,
                    color: Colors.white, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
