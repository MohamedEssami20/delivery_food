
import 'package:flutter/material.dart';
import 'widgets/custom_bottom_details_app_bar.dart';
import 'widgets/detailes_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const String routeName = 'details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomDetailsAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: DetailesViewBody(),
      ),
    );
  }
}

