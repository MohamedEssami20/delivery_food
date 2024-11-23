import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.color});
  final IconData icon;
  final String title;
  final String subTitle;
  final Color color;
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
        child: Icon(icon, color: color, size: 35),
      ),
      title: Text(
        title,
        style: AppTextStyles.semiBold16.copyWith(
          color: Colors.black,
          fontSize: 20,
          height: 0.89,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          subTitle,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF878787),
            height: 0.97,
          ),
        ),
      ),
    );
  }
}
