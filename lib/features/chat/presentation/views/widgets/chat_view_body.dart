import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import 'chat_item.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
            actions: SizedBox(),
            title: "Chat",
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'All Message',
            style: AppTextStyles.semiBold16.copyWith(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const ChatItem(),
        ],
      ),
    );
  }
}