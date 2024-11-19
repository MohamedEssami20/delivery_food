import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class PaymentSummaryItem extends StatelessWidget {
  const PaymentSummaryItem({super.key, required this.title, required this.subtitle, this.color});
  final String title;
  final String subtitle;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF878787),
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.bold16.copyWith(
            color:color?? Colors.black,
          ),
        ),
      ],
    );
  }
}
