 import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar(
    BuildContext context, {
    required String successMessage,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          successMessage,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }