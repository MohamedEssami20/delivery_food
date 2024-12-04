import 'package:delivery_food/core/utils/app_text_styles.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/widgets/custom_text_field.dart';
import 'help_center_item.dart';

class HelpCenterViewBody extends StatelessWidget {
  const HelpCenterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: "Help Center"),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Hi, how we can help you?',
              style: AppTextStyles.semiBold14.copyWith(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              hintText: "Search",
              keyboardType: TextInputType.text,
              prefixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            HelpCenterItem(
              title: 'General',
              image: Assets.assetsImagesGenralIcon,
              subTitle: 'Basic question about Restate',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            HelpCenterItem(
              title: 'Sellers',
              image: Assets.assetsImagesDollarIcon,
              subTitle:
                  'All you need to know about selling your home to Restate',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            HelpCenterItem(
              title: 'Buyers',
              image: Assets.assetsImagesBuyerIcon,
              subTitle: 'Everything you need to know about buying with Restate',
              onTap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            HelpCenterItem(
              title: 'Agents',
              image: Assets.assetsImagesAgentIcon,
              subTitle:
                  'How buying agents and listing agents can work with Restate',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
