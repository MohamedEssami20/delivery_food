import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              width: 0.4, color: Color.fromARGB(255, 126, 125, 125)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: TextField(
        enableSuggestions: false,
        textAlignVertical: TextAlignVertical.center,
        minLines: 1,
        maxLines: 1,
        maxLength: 1,
        keyboardType: TextInputType.number,
        style:
            AppTextStyles.regular16.copyWith(color: Colors.black, fontSize: 35),
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
