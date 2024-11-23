import 'package:delivery_food/features/payment/data/model/payment_item_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});
  static List<PaymentItemModel> detailsTransaction = [
    PaymentItemModel(title: "Name", subtitle: "Albert Stevano"),
    PaymentItemModel(title: "Phone No.", subtitle: "+12 8347 2838 28"),
    PaymentItemModel(title: "House No.", subtitle: "BC54 Berlin"),
    PaymentItemModel(title: "City", subtitle: "New York City"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.separated(
        itemCount: detailsTransaction.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                detailsTransaction[index].title,
                style: AppTextStyles.regular16.copyWith(
                  color: const Color(0xFF878787),
                  fontSize: 20,
                ),
              ),
              Text(
                detailsTransaction[index].subtitle,
                textAlign: TextAlign.right,
                style: AppTextStyles.medium14.copyWith(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 30,
        ),
      ),
    );
  }
}
