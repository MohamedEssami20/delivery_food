import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final void Function(bool?) onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 25,
        height: 25,
        duration: const Duration(milliseconds: 120),
        decoration: ShapeDecoration(
          color: isChecked ? AppColor.primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? AppColor.primaryColor : const Color(0xffDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(Assets.assetsImagesCheck)
            : const SizedBox(),
      ),
    );
  }
}
