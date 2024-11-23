import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/features/home/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'notification_item.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  static List<NotificationModel> notificationsToday = [
    NotificationModel(
        icon: Icons.discount_rounded,
        color: AppColor.primaryColor,
        title: "30% Special Discount!",
        subtitle: "Special promotion only valid today"),
    NotificationModel(
        icon: Icons.check_circle_sharp,
        color: Colors.green,
        title: "Your Order Has Been Taken by the Driver!",
        subtitle: "Recently"),
    NotificationModel(
        icon: Icons.cancel_sharp,
        color: Colors.red,
        title: "Your Order Has Been Canceled",
        subtitle: "19 Jun 2023")
  ];
  static List<NotificationModel> notificationsYesterday = [
    NotificationModel(
        icon: Icons.email_sharp,
        color: Colors.black,
        title: "30% Special Discount!",
        subtitle: "Special promotion only valid today"),
    NotificationModel(
        icon: Icons.person_2_sharp,
        color: Colors.black,
        title: "Account Setup Successfull!",
        subtitle: "Special promotion only valid today"),
    NotificationModel(
        icon: Icons.discount_sharp,
        color: Colors.red,
        title: "Special Offer! 60% Off",
        subtitle: "Special offer for new account, valid until 20 Nov 2022")
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: ListView.separated(
                  itemBuilder: (context, index) => NotificationItem(
                      notificationModel: notificationsToday[index]),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: notificationsToday.length),
            ),
            const Divider(
              color: Color(0xFFD6D6D6),
              thickness: 4,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Yesterday',
              style: AppTextStyles.semiBold16.copyWith(
                color: const Color(0xFF878787),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.3,
              child: ListView.separated(
                itemCount: notificationsYesterday.length,
                itemBuilder: (context, index) => NotificationItem(
                    notificationModel: notificationsYesterday[index]),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
