import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'product_details_info_item.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Burger With Meat 🍔',
          textAlign: TextAlign.center,
          style: AppTextStyles.semiBold16.copyWith(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          '\$ 12,230',
          textAlign: TextAlign.center,
          style: AppTextStyles.bold16.copyWith(
            color: AppColor.primaryColor,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductInfoItem(
                icon: FontAwesomeIcons.dollarSign, title: "Free Delivery"),
            ProductInfoItem(
                icon: FontAwesomeIcons.solidClock, title: "20 - 30"),
            ProductInfoItem(icon: FontAwesomeIcons.solidStar, title: "4.5"),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Divider(
          color: Color(0xFFEDEDED),
          thickness: 1.5,
        ),
        Text(
          'Description',
          style: AppTextStyles.semiBold16.copyWith(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Burger With Meat is a typical food from our restaurant that is much in demand by many people, this is very recommended for you.',
          style: AppTextStyles.regular16.copyWith(
            color: const Color(0xFF878787),
          ),
        ),
      ],
    );
  }
}