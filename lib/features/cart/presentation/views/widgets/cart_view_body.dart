import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'my_cart_app_bar.dart';
import 'payment_summary.dart';
import 'product_card.dart';
import 'promo_code_text_field.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyCartAppBar(),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Location',
                textAlign: TextAlign.center,
                style: AppTextStyles.regular16.copyWith(
                  color: const Color(0xFF878787),
                ),
              ),
              CustomButton(
                title: "     Change Location     ",
                onPressed: () {},
                color: Colors.white,
                textColor: AppColor.primaryColor,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Home',
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const PromoCodeTextField(),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: List.generate(
              3,
              (index) => const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: ProductCard(),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const PaymentSummary(),
        ],
      ),
    );
  }
}
