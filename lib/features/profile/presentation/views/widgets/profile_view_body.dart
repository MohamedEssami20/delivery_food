import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  final int x = 0;
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(actions: SizedBox(), title: "Profile"),
      ],
    );
  }
}
