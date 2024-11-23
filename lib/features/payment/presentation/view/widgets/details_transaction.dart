import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/model/payment_item_model.dart';

class DetailsTransaction extends StatelessWidget {
  const DetailsTransaction({super.key});
  static List<PaymentItemModel> detailsTransaction = [
    PaymentItemModel(title: "Cherry Healthy", subtitle: "\$ 180.000"),
    PaymentItemModel(title: "Driver", subtitle: "\$ 50.000"),
    PaymentItemModel(title: "Tax 10%", subtitle: "\$ 80.390"),
    PaymentItemModel(title: "Total Price", subtitle: "\$ 100.000"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.22,
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
                  color: detailsTransaction[index].title == "Total Price"
                      ? AppColor.primaryColor
                      : Colors.black,
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
