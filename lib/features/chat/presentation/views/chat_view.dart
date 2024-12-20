import 'package:flutter/material.dart';

import 'widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const String routeName = 'chat';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ChatViewBody(),
      ),
    );
  }
}
