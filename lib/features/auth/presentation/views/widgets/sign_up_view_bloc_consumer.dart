import 'package:delivery_food/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:delivery_food/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_progerss_indicator.dart';
import '../../../../../core/utils/widgets/error_snak_bar.dart';
import '../../../../../core/utils/widgets/sucess_snack_bar.dart';

class SignUpViewBlocConsumer extends StatefulWidget {
  const SignUpViewBlocConsumer({
    super.key,
  });

  @override
  State<SignUpViewBlocConsumer> createState() => _SignUpViewBlocConsumerState();
}

class _SignUpViewBlocConsumerState extends State<SignUpViewBlocConsumer> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return CustomProgressIndicator(
          inAsyncCall: state is SignUpLoading,
          child: const SignUpViewBody(),
        );
      },
      listener: (context, state) {
        if (state is SignUpSuccess) {
          showSuccessSnackBar(context, successMessage: "Sign Up Success"); 
        }
        if (state is SignUpFailure) {
          showErrorSnackBar(context, errorMessage: state.errorMessage);
        }
        }
    );
  }
}
