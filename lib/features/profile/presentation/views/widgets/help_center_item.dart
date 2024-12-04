import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_text_styles.dart';

class HelpCenterItem extends StatelessWidget {
  const HelpCenterItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.onTap});
  final String title, subTitle, image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Row(
        children: [
          SvgPicture.asset(
            image,
            width: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: AppTextStyles.semiBold14.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12, left: 50),
        child: Text(
          subTitle,
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF878787),
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}