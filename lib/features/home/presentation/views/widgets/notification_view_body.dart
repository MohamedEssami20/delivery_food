import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'notification_item.dart';

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
            const SizedBox(
              height: 16,
            ),
            const NotificationItem(
                icon: Icons.discount_rounded,
                color: AppColor.primaryColor,
                title: "30% Special Discount!",
                subTitle: "Special promotion only valid today"),
            const SizedBox(
              height: 20,
            ),
            const NotificationItem(
                icon: Icons.check_circle_sharp,
                color: Colors.green,
                title: "Your Order Has Been Taken by the Driver!",
                subTitle: "Recently"),
            const SizedBox(
              height: 20,
            ),
            const NotificationItem(
                icon: Icons.cancel_sharp,
                color: Colors.red,
                title: "Your Order Has Been Canceled",
                subTitle: "19 Jun 2023"),
          ],
        ),
      ),
    );
  }
}

