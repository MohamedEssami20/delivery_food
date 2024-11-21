import 'package:delivery_food/core/utils/app_color.dart';
import 'package:delivery_food/core/utils/widgets/custom_app_bar.dart';
import 'package:delivery_food/core/utils/widgets/custom_dots_indicator.dart';
import 'package:flutter/material.dart';
import 'details_view_app_bar.dart';
import 'product_details_info.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: CustomAppBar(
              actions: Icon(
                Icons.favorite_outline_outlined,
                color: Colors.black,
              ),
              title: "About this menu"),
        ),
        DetailesViewAppBar(
          pageController: _pageController,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
        Transform.translate(
          offset: const Offset(0, -55),
          child: CustomButtonDotsIndicator(
            currentPage: currentIndex.round(),
            activeColor: AppColor.primaryColor,
            inActiveColor: Colors.white,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductInfo(),
            ],
          ),
        ),
      ],
    );
  }
}
