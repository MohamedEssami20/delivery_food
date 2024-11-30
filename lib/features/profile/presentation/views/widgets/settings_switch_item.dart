import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SettingsSwitchItem extends StatelessWidget {
  const SettingsSwitchItem(
      {super.key, required this.value, required this.title});
  final bool value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              title,
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            value: value,
            onChanged: (val) {},
            activeColor: Colors.white,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: const Color(0xffDCDEDE),
            activeTrackColor: AppColor.primaryColor,
            trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
            thumbIcon: const WidgetStatePropertyAll(
              Icon(
                Icons.circle,
                color: Colors.white,
              ),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ],
    );
  }
}
