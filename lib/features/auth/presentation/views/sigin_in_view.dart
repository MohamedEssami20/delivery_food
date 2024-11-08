import 'package:delivery_food/core/service/get_it_service.dart';
import 'package:delivery_food/features/auth/presentation/manager/siginin_cubit/sigin_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/sign_in_view_bloc_consumer.dart';

class SiginInView extends StatelessWidget {
  const SiginInView({super.key});
  static const String routeName = "SiginInView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetItService.getIt<SiginInCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          minimum:
              EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.05),
          child: const SignInViewBlocConsumer(),
        ),
      ),
    );
  }
}
