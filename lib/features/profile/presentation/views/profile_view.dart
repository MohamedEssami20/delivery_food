import 'package:delivery_food/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = "profile_view";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProfileViewBody(),),
    );
  }
}
