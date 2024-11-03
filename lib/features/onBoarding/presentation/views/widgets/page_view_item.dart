import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'We serve incomparable delicacies',
          textAlign: TextAlign.center,
          style: AppTextStyles.semiBold14.copyWith(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!',
            textAlign: TextAlign.center,
            style: AppTextStyles.regular16.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
