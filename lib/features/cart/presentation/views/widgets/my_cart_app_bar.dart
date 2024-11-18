import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/widgets/custom_app_bar.dart';

class MyCartAppBar extends StatelessWidget {
  const MyCartAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      actions: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 3, bottom: 4),
          child: SvgPicture.asset(
            Assets.assetsImagesDotsIcon,
            alignment: Alignment.center,
          ),
        ),
      ),
      title: "My Cart",
    );
  }
}