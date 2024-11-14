import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ProductRatingAndLocation extends StatelessWidget {
  const ProductRatingAndLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.star,
                color: AppColor.primaryColor,
              ),
              Text('4.9',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.medium14.copyWith(
                    color: Colors.black,
                  )),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                color: AppColor.primaryColor,
              ),
              Text(
                '190m',
                textAlign: TextAlign.center,
                style: AppTextStyles.medium14.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}