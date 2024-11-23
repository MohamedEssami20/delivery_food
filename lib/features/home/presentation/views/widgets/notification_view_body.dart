import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            const CustomAppBar(
              actions: SizedBox(),
              title: "Notifications",
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              'Today',
              style: AppTextStyles.semiBold16.copyWith(
                color: const Color(0xFF878787),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
