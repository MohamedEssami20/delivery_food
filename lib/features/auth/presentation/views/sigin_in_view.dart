import 'package:delivery_food/features/auth/presentation/views/widgets/sigin_in_view_body.dart';
import 'package:flutter/material.dart';

class SiginInView extends StatelessWidget {
  const SiginInView({super.key});
  static const String routeName = "SiginInView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: SiginInViewBody()),
    );
  }
}
