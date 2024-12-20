import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatefulWidget {
  const OtpTextField({super.key});

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  // تعريف قائمة من FocusNode للتحكم في التركيز لكل TextField
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    // تنظيف FocusNode عند التخلص من الودجت
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Container(
          alignment: Alignment.center,
          width: 60,
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                  width: 0.4, color: Color.fromARGB(255, 126, 125, 125)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: TextField(
            focusNode: _focusNodes[index],
            enableSuggestions: false,
            textAlignVertical: TextAlignVertical.center,
            minLines: 1,
            maxLines: 1,
            maxLength: 1,
            keyboardType: TextInputType.number,
            style: AppTextStyles.regular16
                .copyWith(color: Colors.black, fontSize: 35),
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              counterText: "",
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.isNotEmpty && index < _focusNodes.length - 1) {
                // الانتقال إلى الحقل التالي عند إدخال رقم
                _focusNodes[index + 1].requestFocus();
              } else if (value.isEmpty && index > 0) {
                // الرجوع إلى الحقل السابق عند حذف الرقم
                _focusNodes[index - 1].requestFocus();
              }
            },
          ),
        );
      }),
    );
  }
}
