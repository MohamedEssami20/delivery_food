import 'package:dartz/dartz.dart';
import 'package:delivery_food/core/errors/failure.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> siginInUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
}