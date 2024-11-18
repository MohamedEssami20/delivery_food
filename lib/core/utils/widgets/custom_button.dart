import 'package:flutter/material.dart';

import '../app_color.dart';
import '../app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.color,
      this.textColor});
  final String title;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
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
        child: Text(
          title,
          style: AppTextStyles.semiBold16
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
