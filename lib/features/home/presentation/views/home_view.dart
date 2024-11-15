import 'package:delivery_food/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCubit>(
      create: (context) => CategoryCubit(),
      child: const Scaffold(
        backgroundColor: Colors.white,
        body: HomeViewBody(),
      ),
    );
  }
}
