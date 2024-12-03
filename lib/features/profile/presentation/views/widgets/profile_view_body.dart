import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/features/profile/presentation/views/personal_data_view.dart';
import 'package:flutter/material.dart';
import '../app_settings.dart';
import 'profile_information.dart';
import 'profile_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});
  final int x = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileInformation(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Profile',
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF878787),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ProfileItem(
            title: 'Personal Data',
            icon: Icons.person_outline,
            onTap: () {
              Navigator.pushNamed(context, PersonalDataView.routeName);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileItem(
            title: 'Settings',
            icon: Icons.settings_outlined,
            onTap: () {
              Navigator.pushNamed(context, AppSettingsView.routeName);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileItem(
            title: 'Extra Card',
            icon: Icons.credit_card_outlined,
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Support',
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF878787),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ProfileItem(
            title: 'Help Center',
            icon: Icons.help_center_outlined,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileItem(
            title: 'Request Account Deletion',
            icon: Icons.delete_outline_outlined,
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          ProfileItem(
            title: 'Add another account',
            icon: Icons.person_add_alt_1_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
