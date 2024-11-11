import 'package:delivery_food/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
    required this.child,
    required this.inAsyncCall,
  });
  final Widget child;
  final bool inAsyncCall;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      progressIndicator: const CircularProgressIndicator(
        color: AppColor.primaryColor,
      ),
      color: Colors.transparent,
      inAsyncCall: inAsyncCall,
      child: child,
    );
  }
}
