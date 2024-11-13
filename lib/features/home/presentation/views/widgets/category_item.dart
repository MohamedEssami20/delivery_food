import 'package:delivery_food/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.title, required this.image, required this.isSelected});
  final String title;
  final String image;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 120,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color:isSelected==true?AppColor.primaryColor:Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 60,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
           isSelected==true?title:"",
            style: AppTextStyles.semiBold16.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
