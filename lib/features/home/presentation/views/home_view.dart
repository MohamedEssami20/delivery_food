import 'package:delivery_food/features/cart/presentation/views/widgets/cart_view_body.dart';
import 'package:delivery_food/features/chat/presentation/views/widgets/chat_view_body.dart';
import 'package:delivery_food/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:delivery_food/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/widgets/custom_bottom_navigation_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
List<Widget> homeWidgets = const [
  HomeViewBody(),
  CartViewBody(),
  ChatViewBody(),
  ProfileViewBody(),
];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCubit>(
      create: (context) => CategoryCubit(),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBarWidget(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
        ),
        backgroundColor: Colors.white,
        body: homeWidgets.elementAt(currentIndex),
      ),
    );
  }
}
