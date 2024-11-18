import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';

class PromoCodeTextField extends StatelessWidget {
  const PromoCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      radius: 30,
      hintText: "Promo Code",
      keyboardType: TextInputType.text,
      prefixIcon: IconButton(
        padding: const EdgeInsets.only(top: 10, right: 10),
        icon: SvgPicture.asset(
          Assets.assetsImagesDiscountIcon,
          width: 40,
        ),
        onPressed: () {},
      ),
      suffixIcon: SizedBox(
        width: 160,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: CustomButton(
            title: "Apply",
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
