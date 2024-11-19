import 'package:delivery_food/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class PaymentSummaryModel {
  final String title;
  final String subtitle;
  final Color? color;

  PaymentSummaryModel(
      {required this.title, required this.subtitle, required this.color});

  static List<PaymentSummaryModel> paymentSummaryList = [
    PaymentSummaryModel(
        title: 'Total Items (3)', subtitle: '\$48,900', color: Colors.black),
    PaymentSummaryModel(
        title: 'Delivery Fee', subtitle: 'Free', color: Colors.black),
    PaymentSummaryModel(
        title: 'Discount', subtitle: '-\$10,900', color: AppColor.primaryColor),
    PaymentSummaryModel(
        title: 'Total', subtitle: '\$38,000', color: Colors.black),
  ];
}
