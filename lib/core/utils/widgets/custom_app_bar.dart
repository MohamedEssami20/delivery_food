import 'package:flutter/material.dart';

import '../app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.actions, required this.title});
  final Widget actions;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 22,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: AppTextStyles.semiBold16
              .copyWith(color: Colors.black, fontSize: 20),
        ),
        const Spacer(),
        actions,
      ],
    );
  }
}
