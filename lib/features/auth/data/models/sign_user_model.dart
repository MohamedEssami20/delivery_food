import 'package:delivery_food/features/auth/data/models/user_model.dart';
import 'package:flutter/widgets.dart';

class SignUserModel {
  final UserModel userModel;
  final BuildContext context;
  final bool mounted;
  final bool isChecked;

  SignUserModel({
    required this.userModel,
    required this.context,
    required this.mounted,
    this.isChecked=false,
  });
}
