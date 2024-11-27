import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'profile_information.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  final int x = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileInformation(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Profile',
            style: AppTextStyles.medium14
                .copyWith(color: const Color(0xFF878787), fontSize: 16,),
          ),
        ],
      ),
    );
  }
}
