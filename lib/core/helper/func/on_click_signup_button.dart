import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import '../../utils/widgets/error_snak_bar.dart';

Future<void> onClickSignUpButton(
    BuildContext context,
    bool isChecked,
    GlobalKey<FormState> formKey,
    String? email,
    String? password,
    String? name, AutovalidateMode autovalidateMode, void Function(void Function() fn) setState) async {
  if (isChecked == false) {
    showErrorSnackBar(context,
        errorMessage: "you should accept terms and conditions");
  }
  if (formKey.currentState!.validate() && isChecked == true) {
    formKey.currentState!.save();
    await context.read<SignUpCubit>().createUserWithEmailAndPassword(
          email: email!,
          password: password!,
          name: name!,
        );
  } else {
    autovalidateMode = AutovalidateMode.always;
    setState(() {});
  }
}
