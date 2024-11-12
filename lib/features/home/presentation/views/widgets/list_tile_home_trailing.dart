import 'package:flutter/material.dart';

class ListTileHomeTrailing extends StatelessWidget {
  const ListTileHomeTrailing({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const ShapeDecoration(
        shape:  CircleBorder(
          side: BorderSide(color: Colors.white, width: 1),
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 25,
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
