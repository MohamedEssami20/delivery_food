import 'package:dartz/dartz.dart';
import 'package:delivery_food/core/errors/failure.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';

import '../../../data/models/user_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> siginInUserWithEmailAndPassword({
    required UserModel userModel,
  });

  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required UserModel userModel,
  });
}
