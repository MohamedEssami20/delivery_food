import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/core/utils/widgets/custom_dots_indicator.dart';
import 'package:delivery_food/features/home/presentation/views/widgets/find_by_category.dart';
import 'package:flutter/material.dart';
import 'details_view_app_bar.dart';
import 'product_details_info.dart';
import 'recomended_for_you.dart';

class DetailesViewBody extends StatefulWidget {
  const DetailesViewBody({super.key});

  @override
  State<DetailesViewBody> createState() => _DetailesViewBodyState();
}

class _DetailesViewBodyState extends State<DetailesViewBody> {
  late PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: CustomAppBar(
                actions: Icon(
                  Icons.favorite_outline_outlined,
                  color: Colors.black,
                ),
                title: "About this menu"),
          ),
        ),
        SliverToBoxAdapter(
          child: DetailesViewAppBar(
            pageController: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Transform.translate(
            offset: const Offset(0, -55),
            child: CustomButtonDotsIndicator(
              currentPage: currentIndex.round(),
              activeColor: AppColor.primaryColor,
              inActiveColor: Colors.white,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductInfo(),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
        const SliverToBoxAdapter(
          child: FindByCategory(
            title: "Recomended For You",
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        const SliverFillRemaining(
          hasScrollBody: true,
          child: RecomendedForYou(),
        ),
      ],
    );
  }
}