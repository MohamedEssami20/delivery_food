import 'package:flutter/material.dart';

class IncrementAndDecrementButton extends StatelessWidget {
  const IncrementAndDecrementButton({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: const BorderSide(
            width: 1,
            color: Color(0xFFEDEDED),
          ),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}