

import 'package:delivery_food/features/auth/presentation/views/widgets/otp_view_body.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});
  static const String routeName = 'otp';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpViewBody(),
    );
  }
}