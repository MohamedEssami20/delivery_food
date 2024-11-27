import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../data/model/chat_model.dart';
import 'chat_item.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});
  static List<ChatModel> chat = [
    ChatModel(
      name: 'Geopart Etdsien',
      image: Assets.assetsImagesProfileImag2,
      message: "Hello, how are you doing? Can I help you with anything?",
      time: "13.47",
    ),
    ChatModel(
      name: 'Stevano Clirover',
      image: Assets.assetsImagesProfileImage1,
      message: "Your Order Just Arrived!",
      time: "13.47",
    ),
    ChatModel(
      name: 'Elisia Justin',
      image: Assets.assetsImagesProfileImage3,
      message: "Hello, how are you doing?",
      time: "13.47",
    ),
    ChatModel(
      name: 'Geopart Etdsien',
      image: Assets.assetsImagesProfileImag2,
      message: "Hello, how are you doing? Can I help you with anything?",
      time: "13.47",
    ),
    ChatModel(
      name: 'Geopart Etdsien',
      image: Assets.assetsImagesProfileImage1,
      message: "Hello, how are you doing? Can I help you with anything?",
      time: "13.47",
    ),
    ChatModel(
      name: 'Geopart Etdsien',
      image: Assets.assetsImagesProfileImage3,
      message: "Hello, how are you doing? Can I help you with anything?",
      time: "13.47",
    ),
    ChatModel(
      name: 'Geopart Etdsien',
      image: Assets.assetsImagesProfileImag2,
      message: "Hello, how are you doing? Can I help you with anything?",
      time: "13.47",
    ),
  ];
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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ChatItem(chatModel: chat[index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: chat.length,
          ),
        ],
      ),
    );
  }
}
