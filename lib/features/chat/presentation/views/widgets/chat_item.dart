import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/model/chat_model.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, required this.chatModel});
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      isThreeLine: true,
      minVerticalPadding: 20,
      style: ListTileStyle.drawer,
      leading: CircleAvatar(
        radius: 50,
        backgroundColor: const Color(0xFFF5F5FF),
        backgroundImage: AssetImage(chatModel.image),
      ),
      title: Text(
        chatModel.name,
        style: AppTextStyles.semiBold16.copyWith(
          color: Colors.black,
        ),
      ),
      subtitle: SizedBox(
        width: 23,
        child: Text(
          chatModel.message,
          style: AppTextStyles.medium14.copyWith(
            color: const Color(0xFF878787),
            height: 2.3,
          ),
        ),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            chatModel.time,
            textAlign: TextAlign.right,
            style: AppTextStyles.medium14.copyWith(
              color: const Color(0xFF878787),
            ),
          ),
          Expanded(
            flex: 2,
            child: SvgPicture.asset(
              Assets.assetsImagesDoubleCheckIcon,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
