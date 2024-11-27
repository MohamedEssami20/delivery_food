import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      minVerticalPadding: 20,
      style: ListTileStyle.drawer,
      leading: const CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xFFF5F5FF),
        backgroundImage: AssetImage(Assets.assetsImagesProfileImage1),
      ),
      title: Text(
        'Geopart Etdsien',
        style: AppTextStyles.semiBold16.copyWith(
          color: Colors.black,
        ),
      ),
      subtitle: SizedBox(
        width: 23,
        child: Text(
          'Your Order Just Arrived!',
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF878787),
            height: 2.3,
          ),
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            '13.47',
            textAlign: TextAlign.right,
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF878787),
            ),
          ),
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              Assets.assetsImagesDoubleCheckIcon,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
