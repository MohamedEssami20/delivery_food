import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'profile_image.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Profile Settings',
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const ProfileImage(),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Albert Stevano Bajefski',
            style: AppTextStyles.semiBold16
                .copyWith(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Albertstevano@gmail.com',
            style: AppTextStyles.regular16.copyWith(
              color: const Color(0xFF878787),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            color: Color(0xFFEDEDED),
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
