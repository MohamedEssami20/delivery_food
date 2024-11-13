import 'package:delivery_food/core/utils/app_assets.dart';
import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/features/home/presentation/views/widgets/category_item.dart';
import 'package:delivery_food/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarHomeView(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find by Category',
                    style: AppTextStyles.semiBold16.copyWith(fontSize: 20),
                  ),
                  Text(
                    'See All',
                    style: AppTextStyles.semiBold16
                        .copyWith(color: AppColor.primaryColor, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 20),
             const Row(
                children: [
                  CategoryItem(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

