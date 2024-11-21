import 'package:flutter/material.dart';

import '../app_color.dart';
import '../app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.textColor,
      this.icon});
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: color ?? AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: const BorderSide(color: AppColor.primaryColor, width: 1),
        ),
      ),
      onPressed: onPressed,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: icon != null,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Visibility(
              visible: icon != null,
              child: const SizedBox(
                width: 12,
              ),
            ),
            Text(
              title,
              style: AppTextStyles.semiBold16
                  .copyWith(color: textColor ?? Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
