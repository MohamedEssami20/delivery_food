import 'package:delivery_food/features/auth/presentation/manager/siginin_cubit/sigin_in_cubit.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sigin_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewBlocConsumer extends StatelessWidget {
  const SignInViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiginInCubit, SiginInState>(
      builder: (context, state) => const SiginInViewBody(),
      listener: (context,state){
        if(state is SiginInSuccess){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(),
            ),
          )
        }
      },
    );
  }
}
