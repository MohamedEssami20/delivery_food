import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(Assets.assetsImagesProfileImage3),
          radius: 80,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Icon(
              Icons.camera_alt,
              color: AppColor.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}