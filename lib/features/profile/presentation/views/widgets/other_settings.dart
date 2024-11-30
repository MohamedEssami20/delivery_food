import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class OtherSettingItem extends StatelessWidget {
  const OtherSettingItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.medium14.copyWith(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        Transform.rotate(
          angle: 3.14,
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ],
    );
  }
}
