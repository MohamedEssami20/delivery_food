import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: AppTextStyles.medium14.copyWith(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Transform.rotate(
          angle: 3.14,
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
    );
  }
}