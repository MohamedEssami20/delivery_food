import 'package:delivery_food/features/profile/presentation/views/widgets/help_center_view_body.dart';
import 'package:flutter/material.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});
  static const String routeName = 'help_center';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HelpCenterViewBody(),
    );
  }
}