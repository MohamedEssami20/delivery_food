import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(actions: SizedBox(), title: "Chat"),
      ],
    );
  }
}