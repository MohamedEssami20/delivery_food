import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'card_item.dart';

class ExtraCardViewBody extends StatelessWidget {
  const ExtraCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              title: "Extra Card",
              actions: CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 243, 242, 242),
                radius: 22,
                child: IconButton(
                  onPressed: () {},
                  icon: const Center(
                    child: Icon(
                      Icons.delete_outline_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const CardItem(),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Credit card',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CreditCardItem(
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCardItem extends StatelessWidget {
  const CreditCardItem({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          side: BorderSide(
            color: isSelected ? AppColor.primaryColor : const Color(0xFFEDEDED),
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
          'MasterCard',
          style: AppTextStyles.semiBold16.copyWith(color: Colors.black),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            '**** **** 0783 7873',
            style: AppTextStyles.regular16.copyWith(
              color: const Color(0xFF878787),
            ),
          ),
        ),
        trailing: SvgPicture.asset(
          Assets.assetsImagesMastercard,
          width: 60,
        ),
      ),
    );
  }
}
