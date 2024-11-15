
import 'package:delivery_food/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:delivery_food/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'find_by_category.dart';
import 'product_items_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 3,
          child: AppBarHomeView(),
        ),
        Expanded(
          child: FindByCategory(),
        ),
        Expanded(
          flex: 6,
          child: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 32),
                  child: CategoryItemListView(
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverFillRemaining(
                hasScrollBody: true,
                fillOverscroll: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child:  ProductItemsListView(
                    
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
