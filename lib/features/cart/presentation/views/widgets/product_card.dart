import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../auth/presentation/views/widgets/custom_check_box.dart';
import 'increment_and_decrement_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          CustomCheckbox(
            isChecked: true,
            onChanged: (val) {},
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 140,
            width: 170,
            decoration: ShapeDecoration(
              color: Colors.redAccent,
              image: const DecorationImage(
                  image: AssetImage(Assets.assetsImagesProduct),
                  fit: BoxFit.fill),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Burger With Meat',
                textAlign: TextAlign.center,
                style: AppTextStyles.semiBold16
                    .copyWith(color: Colors.black, fontSize: 20),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '\$ 12,230',
                textAlign: TextAlign.center,
                style: AppTextStyles.bold16.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const IncrementAndDecrementButton(icon: Icons.remove),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    '1',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.bold16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  const IncrementAndDecrementButton(icon: Icons.add),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_sharp,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
