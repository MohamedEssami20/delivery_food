import 'package:delivery_food/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions(
      {super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(isChecked: isChecked, onChanged: onChanged),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
          children: [
            Text.rich(
              softWrap: true,
              TextSpan(
                children: [
                  const TextSpan(
                      text: 'I Agree with ', style: AppTextStyles.medium14),
                  TextSpan(
                    text: 'Terms of Service',
                    style: AppTextStyles.semiBold14
                        .copyWith(color: AppColor.primaryColor),
                  ),
                  const TextSpan(text: ' and ', style: AppTextStyles.medium14),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: AppTextStyles.semiBold14
                        .copyWith(color: AppColor.primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
