
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class DetailesViewAppBar extends StatelessWidget {
  const DetailesViewAppBar({
    super.key, required this.pageController, this.onPageChanged,
  });
  final PageController pageController;
  final void Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: SizedBox(
        height: 400,
        child: PageView(
          onPageChanged: onPageChanged,
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            3,
            (index) => Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                image: const DecorationImage(
                    image: AssetImage(
                      Assets.assetsImagesProduct,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
