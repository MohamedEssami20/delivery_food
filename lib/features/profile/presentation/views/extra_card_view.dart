import 'package:delivery_food/features/profile/presentation/views/widgets/extra_card_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manager/cubit/credit_item_cubit_cubit.dart';

class ExtraCardView extends StatelessWidget {
  const ExtraCardView({super.key});
  static const String routeName = 'extra_card_view';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider(
        create: (context) => CreditItemCubitCubit(),
        child:const ExtraCardViewBody(),
      ),
    );
  }
}
