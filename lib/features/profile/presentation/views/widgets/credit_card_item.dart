import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/credit_card_item_model.dart';

class CreditCardItem extends StatelessWidget {
  const CreditCardItem(
      {super.key, required this.isSelected, required this.creditCardItemModel});
  final bool isSelected;
  final CreditCardItemModel creditCardItemModel;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      curve: Curves.easeInExpo,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            side: BorderSide(
              color:
                  isSelected ? AppColor.primaryColor : const Color(0xFFEDEDED),
              width: 1,
            ),
          ),
          color: Colors.white,
        ),
        child: ListTile(
          minVerticalPadding: 20,
          isThreeLine: false,
          leading: SvgPicture.asset(
            Assets.assetsImagesPayIcon,
            fit: BoxFit.fill,
            width: 50,
          ),
          title: Text(
            creditCardItemModel.title,
            style: AppTextStyles.semiBold16.copyWith(color: Colors.black),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              creditCardItemModel.subTitle,
              style: AppTextStyles.regular16.copyWith(
                color: const Color(0xFF878787),
              ),
            ),
          ),
          trailing: SvgPicture.asset(
            creditCardItemModel.image,
            width: 60,
          ),
        ),
      ),
    );
  }
}