import 'package:delivery_food/features/auth/presentation/views/sigin_in_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

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
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, SiginInView.routeName);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Skip',
              style: AppTextStyles.semiBold14.copyWith(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: GestureDetector(
            onTap: () {
              if(pageController.page == 2) {
               Navigator.pushReplacementNamed(context, SiginInView.routeName);
              }
              else{
                pageController.nextPage(
                duration: const Duration(milliseconds: 400),
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
