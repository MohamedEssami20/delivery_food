import 'package:delivery_food/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_color.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCubit>(
      create: (context) => CategoryCubit(),
      child: const Scaffold(
        bottomNavigationBar: BottomNavigationBarWidget(),
        backgroundColor: Colors.white,
        body: HomeViewBody(),
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      backgroundColor: Colors.white,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: Colors.black54,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "My Orders"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
