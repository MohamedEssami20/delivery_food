import 'dart:async';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  TimerWidgetState createState() => TimerWidgetState();
}

class TimerWidgetState extends State<TimerWidget> {
  late int _seconds;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _seconds = 180; // 3 minutes = 180 seconds
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer.cancel(); // إيقاف التايمر بعد 3 دقائق
        // يمكن إضافة أي إجراء آخر عند انتهاء الوقت
      }
    });
  }

  String get formattedTime {
    int minutes = _seconds ~/ 60; // حساب الدقايق
    int seconds = _seconds % 60; // حساب الثواني
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer.cancel(); // تأكد من إيقاف التايمر عند مغادرة الصفحة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.timer_sharp,
          color: Color(0xFF878787),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 5),
        ),
        Text(
          formattedTime, // عرض الوقت المتبقي
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF878787),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
