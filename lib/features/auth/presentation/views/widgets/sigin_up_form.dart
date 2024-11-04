import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class SiginUpForm extends StatelessWidget {
  const SiginUpForm({super.key, required this.isVisible, this.onTap});
  final bool isVisible;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'User Name',
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF0F0F0F),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const CustomTextField(
          hintText: "Enter Username",
          keyboardType: TextInputType.text,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'Password',
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF0F0F0F),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          obscureText: isVisible,
          keyboardType: TextInputType.visiblePassword,
          hintText: "Enter Password",
          suffixIcon: IconButton(
            onPressed: () {
              onTap!();
            },
            icon: isVisible
                ? const Icon(Icons.visibility_off_outlined)
                : const Icon(Icons.visibility_outlined),
          ),
        ),
      ],
    );
  }
}
