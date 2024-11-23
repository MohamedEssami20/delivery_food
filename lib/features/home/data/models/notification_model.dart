import 'package:flutter/material.dart';

class NotificationModel {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;

  NotificationModel(
      {required this.title,
      required this.subtitle,
      required this.color,
      required this.icon});
}
