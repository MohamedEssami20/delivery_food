import 'package:delivery_food/features/profile/presentation/manager/cubit/credit_item_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/widgets/custom_app_bar.dart';
import '../../../data/models/credit_card_item_model.dart';
import 'card_item.dart';
import 'credit_card_item.dart';

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
            BlocBuilder<CreditItemCubitCubit, int>(
              builder: (context, currentIndex) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: CreditCardItemModel.creditCardItemModelList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<CreditItemCubitCubit>()
                            .changeCurrentIndex(index);
                      },
                      child: CreditCardItem(
                        isSelected: currentIndex == index,
                        creditCardItemModel:
                            CreditCardItemModel.creditCardItemModelList[index],
                      ),
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            
          ],
        ),
      ),
    );
  }
}
