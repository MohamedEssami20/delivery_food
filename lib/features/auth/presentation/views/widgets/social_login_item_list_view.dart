import 'dart:io';

import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/social_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/siginin_cubit/sigin_in_cubit.dart';

class SocialLoginItemListView extends StatelessWidget {
  const SocialLoginItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () async {
            await context.read<SiginInCubit>().signInWithGoogle();
          },
          child: const SocialIcon(
            icon: Assets.assetsImagesGoogleIcon,
            size: 24,
            height: 24,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const SocialIcon(
          icon: Assets.assetsImagesFacebookIcon,
          size: 22,
          height: 24,
        ),
        const SizedBox(
          width: 8,
        ),
        Visibility(
          visible: Platform.isIOS,
          child: const SocialIcon(
            icon: Assets.assetsImagesAppleIcon,
            size: 24,
            height: 30,
          ),
        ),
      ],
    );
  }
}
