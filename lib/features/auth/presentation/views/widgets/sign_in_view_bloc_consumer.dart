import 'package:delivery_food/core/utils/widgets/error_snak_bar.dart';
import 'package:delivery_food/core/utils/widgets/sucess_snack_bar.dart';
import 'package:delivery_food/features/auth/presentation/manager/siginin_cubit/sigin_in_cubit.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sigin_in_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_progerss_indicator.dart';

class SignInViewBlocConsumer extends StatefulWidget {
  const SignInViewBlocConsumer({super.key});

  @override
  State<SignInViewBlocConsumer> createState() => _SignInViewBlocConsumerState();
}

class _SignInViewBlocConsumerState extends State<SignInViewBlocConsumer> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SiginInCubit, SiginInState>(
      builder: (context, state) {
        return CustomProgressIndicator(
          inAsyncCall: state is SiginInLoading,
          child: const SiginInViewBody(),
        );
      },
      listener: (context, state) {
        if (state is SiginInSuccess) {
          showSuccessSnackBar(context, successMessage: "Login Success");
        }
        if (state is SiginInFailure) {
          showErrorSnackBar(context, errorMessage: state.errorMessage);
        }
      },
    );
  }
}
