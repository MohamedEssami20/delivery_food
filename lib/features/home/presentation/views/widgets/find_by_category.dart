import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FindByCategory extends StatelessWidget {
  const FindByCategory({
    super.key, this.title, this.subTitle,
  });
  final String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
             title?? 'Find by Category',
            style: AppTextStyles.semiBold16.copyWith(fontSize: 20),
          ),
          Text(
            subTitle?? 'See All',
            style: AppTextStyles.semiBold16
                .copyWith(color: AppColor.primaryColor, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
