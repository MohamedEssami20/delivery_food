import 'package:delivery_food/core/service/get_it_service.dart';
import 'package:delivery_food/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sign_up_view_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = "SignUpViewBody";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetItService.getIt.get<SignUpCubit>(),
      child: const Scaffold(
        body: SafeArea(
          child: SignUpViewBlocConsumer(),
        ),
      ),
    );
  }
}
