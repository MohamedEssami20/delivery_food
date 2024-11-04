import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/social_items.dart';
import 'package:flutter/material.dart';

class SocialLoginItemListView extends StatelessWidget {
  const SocialLoginItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIcon(
          icon: Assets.assetsImagesGoogleIcon,
          size: 24,
          height: 24,
        ),
        SizedBox(
          width: 8,
        ),
        SocialIcon(
          icon: Assets.assetsImagesFacebookIcon,
          size: 22,
          height: 24,
        ),
        SizedBox(
          width: 8,
        ),
        SocialIcon(
          icon: Assets.assetsImagesAppleIcon,
          size: 24,
          height: 30,
        ),
      ],
    );
  }
}
