import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ChangeLanguageWidget extends StatelessWidget {
  const ChangeLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Text(
            'Language',
            style: AppTextStyles.medium14.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'English',
            style: AppTextStyles.medium14.copyWith(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: Transform.rotate(
            angle: 3.14,
            child: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
      ],
    );
  }
}
