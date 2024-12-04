import 'package:delivery_food/features/profile/presentation/views/widgets/extra_card_view_body.dart';
import 'package:flutter/material.dart';

class ExtraCardView extends StatelessWidget {
  const ExtraCardView({super.key});
  static const String routeName = 'extra_card_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ExtraCardViewBody(),
    );
  }
}