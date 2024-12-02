import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'change_language_widget.dart';
import 'other_settings.dart';
import 'settings_switch_item.dart';

class AppSettingsViewBody extends StatelessWidget {
  const AppSettingsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      minimum: const EdgeInsets.only(top: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(actions: SizedBox(), title: "Settings"),
            const SizedBox(height: 50),
            Text(
              'PROFILE',
              style: AppTextStyles.medium14.copyWith(
                color: const Color(0xFF878787),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            const SettingsSwitchItem(
              value: true,
              title: 'Push Notification',
            ),
            const SizedBox(
              height: 25,
            ),
            const SettingsSwitchItem(
              value: false,
              title: "Location",
            ),
            const SizedBox(
              height: 25,
            ),
            const ChangeLanguageWidget(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'OTHER',
              style: AppTextStyles.medium14.copyWith(
                color: const Color(0xFF878787),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const OtherSettingItem(title: 'About Ticketis'),
            const SizedBox(
              height: 30,
            ),
            const OtherSettingItem(title: 'Privacy Policy'),
            const SizedBox(
              height: 30,
            ),            
            const OtherSettingItem(title: 'Terms and Conditions'),
          ],
        ),
      ),
    );
  }
}

