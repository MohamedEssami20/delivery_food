import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomButtonDotsIndicator extends StatelessWidget {
  const CustomButtonDotsIndicator({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DotsIndicator(
          position: currentPage.round(),
          dotsCount: 3,
          axis: Axis.horizontal,
          decorator: DotsDecorator(
            activeColor: Colors.white,
            color: const Color(0xFFC2C2C2),
            size: const Size(32, 6),
            activeSize: const Size(32, 6),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.59),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.59),
            ),
          ),
        ),
      ],
    );
  }
}