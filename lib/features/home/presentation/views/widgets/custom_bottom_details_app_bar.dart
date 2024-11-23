import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../cart/presentation/views/widgets/increment_and_decrement_button.dart';
import '../../../../payment/presentation/view/payment_view.dart';

class CustomBottomDetailsAppBar extends StatelessWidget {
  const CustomBottomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: Colors.transparent,
      height: MediaQuery.sizeOf(context).height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const FittedBox(
                  child: IncrementAndDecrementButton(icon: Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              Text(
                '4',
                style: AppTextStyles.semiBold16.copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 20,
              ),
              const FittedBox(
                  child: IncrementAndDecrementButton(icon: Icons.add)),
            ],
          ),
          SizedBox(
            width: 300,
            child: CustomButton(
              title: "Add To Cart",
              onPressed: () {
                Navigator.of(context).pushNamed(PaymentView.routeName);
              },
              icon: FontAwesomeIcons.basketShopping,
            ),
          ),
        ],
      ),
    );
  }
}
