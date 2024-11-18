import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.keyboardType,
      this.obscureText,
      this.onSved,
      this.validator,
      this.prefixIcon, this.radius});
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool? obscureText;
  final void Function(String?)? onSved;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.medium14.copyWith(
          color: const Color(0xFF878787),
        ),
        border: buildBorders(null, radius),
        enabledBorder: buildBorders(null , radius),
        focusedBorder: buildBorders(AppColor.primaryColor, radius),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      textInputAction: TextInputAction.done,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'this field is required';
            }
            return null;
          },
      onSaved: onSved,
    );
  }

  OutlineInputBorder buildBorders(
    Color? color,
    double? radius,
  ) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 6),
      borderSide: BorderSide(color: color ?? const Color(0xFFD6D6D6), width: 1),
    );
  }
}
