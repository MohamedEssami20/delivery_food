import 'package:delivery_food/features/payment/presentation/view/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});
  static const routeName = 'payment';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentViewBody(),
    );
  }
}