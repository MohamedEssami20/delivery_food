import 'package:delivery_food/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:delivery_food/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/category_item_model.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryItemModel.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
              onTap: () {
                context.read<CategoryCubit>().changeCategory(index);
              },
              child: BlocBuilder<CategoryCubit, int>(
                  builder: (context, currentIndex) {
                return CategoryItem(
                  isSelected: currentIndex ==index,
                  image: CategoryItemModel.categories[index].image,
                  title: CategoryItemModel.categories[index].title,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
