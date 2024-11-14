import 'package:delivery_food/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

import '../../../data/models/category_item_model.dart';

class CategoryItemListView extends StatefulWidget {
  const CategoryItemListView({
    super.key,
  });

  @override
  State<CategoryItemListView> createState() => _CategoryItemListViewState();
}

class _CategoryItemListViewState extends State<CategoryItemListView> {
  int currentIndex = 0;
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
                setState(() {
                  currentIndex = index;
                });
              },
              child: CategoryItem(
                isSelected: currentIndex == index,
                image: CategoryItemModel.categories[index].image,
                title: CategoryItemModel.categories[index].title,
              ),
            ),
          );
        },
      ),
    );
  }
}
