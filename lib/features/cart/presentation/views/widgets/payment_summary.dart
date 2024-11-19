import 'package:delivery_food/features/cart/data/models/payment_summary_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'payment_summary_item.dart';

class PaymentSummary extends StatelessWidget {
  const PaymentSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFEDEDED),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style: AppTextStyles.semiBold16
                  .copyWith(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: List.generate(
                  PaymentSummaryModel.paymentSummaryList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: PaymentSummaryItem(
                      title:
                          PaymentSummaryModel.paymentSummaryList[index].title,
                      subtitle: PaymentSummaryModel
                          .paymentSummaryList[index].subtitle,
                      color:
                          PaymentSummaryModel.paymentSummaryList[index].color),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
