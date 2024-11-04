import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xFFC2C2C2),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Or Sign in with',
            style: TextStyle(color: Color(0xFF878787)),
          ),
        ),
        Expanded(
          child: Container(
            height: 1,
            color: const Color(0xFFC2C2C2),
          ),
        ),
      ],
    );
  }
}