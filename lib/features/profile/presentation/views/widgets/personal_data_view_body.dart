import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/core/utils/widgets/custom_button.dart';
import 'package:delivery_food/core/utils/widgets/custom_text_field.dart';
import 'package:delivery_food/features/profile/presentation/views/widgets/profile_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class PersonalDataViewBody extends StatelessWidget {
  const PersonalDataViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 32),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(actions: SizedBox(), title: "Personal Data"),
            const SizedBox(
              height: 80,
            ),
            const Center(
              child: ProfileImage(),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Full Name',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              hintText: "",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Date of Birth',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              hintText: "",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Gender',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              hintText: "",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Phone',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              hintText: "",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: AppTextStyles.medium14.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const CustomTextField(
              hintText: "",
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: CustomButton(
                title: "Save",
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
