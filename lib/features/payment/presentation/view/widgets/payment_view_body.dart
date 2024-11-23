import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'check_out_now.dart';
import 'details_transaction.dart';
import 'item_ordered.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.03,
          ),
          const CustomAppBar(actions: SizedBox(), title: "Payment"),
          const SizedBox(
            height: 50,
          ),
          Text(
            'You deserve better meal',
            style: AppTextStyles.regular16.copyWith(
              color: const Color(0xFF878787),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Item Ordered',
            style: AppTextStyles.bold16.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ItemOrdered(),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Details Transaction',
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const DetailsTransaction(),
          Text(
            'Deliver to :',
            style: AppTextStyles.semiBold16
                .copyWith(color: Colors.black, fontSize: 20),
          ),
          const DeliverTo(),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
            title: "Checkout Now",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
