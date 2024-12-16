import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 220 / 100,
      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          image: const DecorationImage(
            image: AssetImage(Assets.assetsImagesCardBackground),
            fit: BoxFit.fill,
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SoCard',
              style: AppTextStyles.semiBold16.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Text(
              '••••  ••••  ••••  8374',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card holder name',
                      style: AppTextStyles.regular16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '••• •••',
                      style: AppTextStyles.medium14
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expiry date',
                      style: AppTextStyles.regular16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '••• / •••',
                      style: AppTextStyles.medium14
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.assetsImagesMastercardIcon,
                      fit: BoxFit.fill,
                      width: 100,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
