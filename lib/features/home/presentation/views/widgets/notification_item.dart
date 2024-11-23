import 'package:delivery_food/features/home/data/models/notification_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key, required this.notificationModel,
      });

  final NotificationModel notificationModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      style: ListTileStyle.list,
      horizontalTitleGap: 10,
      minTileHeight: 100,
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: const Color(0xFFF5F5FF),
        child: Icon(notificationModel.icon, color: notificationModel.color, size: 35),
      ),
      title: Text(
        notificationModel.title,
        style: AppTextStyles.semiBold16.copyWith(
          color: Colors.black,
          fontSize: 20,
          height: 0.89,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          notificationModel.subtitle,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF878787),
            height: 0.97,
          ),
        ),
      ),
    );
  }
}
