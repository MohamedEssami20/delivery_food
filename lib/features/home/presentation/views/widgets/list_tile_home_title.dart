import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ListTileHomeTitle extends StatelessWidget {
  const ListTileHomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Your Location',
          textAlign: TextAlign.center,
          style: AppTextStyles.regular16
              .copyWith(color: Colors.white),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Transform.rotate(
          angle: -3.14 / 2,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}