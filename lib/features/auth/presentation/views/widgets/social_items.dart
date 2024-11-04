import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon(
      {super.key, required this.icon, this.onTap, required this.size, required this.height});
  final String icon;
  final double size;
  final double height;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
          backgroundColor: const Color(0xFFD6D6D6),
          maxRadius: 22,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 21,
            child: SvgPicture.asset(
              icon,
              width: size,
              height: height,
            ),
          )),
    );
  }
}
