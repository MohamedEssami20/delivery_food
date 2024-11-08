import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/auth/data/models/sign_user_model.dart';
import '../../../features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import '../../utils/widgets/error_snak_bar.dart';

Future<void> onClickSignUpButton({required SignUserModel signUserModel}) async {
    if (signUserModel.isChecked == false) {
      showErrorSnackBar(signUserModel.context,
          errorMessage: "you should accept terms and conditions");
    }
      await signUserModel.context.read<SignUpCubit>().createUserWithEmailAndPassword(
          userModel: signUserModel.userModel,
          ).then(
        (value) {
          Navigator.pop(signUserModel.mounted? signUserModel.context:signUserModel.context);
        });
  
  }