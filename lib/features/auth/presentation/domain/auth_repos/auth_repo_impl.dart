import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:delivery_food/core/errors/custom_exception.dart';
import 'package:delivery_food/core/errors/failure.dart';
import 'package:delivery_food/features/auth/presentation/domain/auth_repos/auth_repo.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/service/firebase_auth_service.dart';
import '../../../data/models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required UserModel userModel}) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: userModel.email, password: userModel.password);
      UserEntity userEntity = UserEntity(
        email: userModel.email,
        password: userModel.password,
        uid: user.uid,
        userName: userModel.userName,
      );
      return Right(userEntity);
    } on CustomException catch (e) {
      return Left(
        ServerFailure(errotMessage: e.errorMessage),
      );
    } catch (e) {
      return Left(
        ServerFailure(errotMessage: "there was an error, try later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> siginInUserWithEmailAndPassword(
      {required UserModel userModel}) async {
    User? user;
    try {
      user = await firebaseAuthService.siginInUserWithEmailAndPassword(
        email: userModel.email,
        password: userModel.password,
      );
      log("user now $user");
      UserEntity userEntity = UserEntity(
          email: userModel.email,
          password: userModel.password,
          uid: user.uid,
          userName: userModel.userName);
      return Right(userEntity);
    } on CustomException catch (e) {
      log("userEntity ${user!.displayName}");
      return Left(
        ServerFailure(errotMessage: e.errorMessage),
      );
    } catch (e) {
      log('exeption now= $e');
      return Left(
        ServerFailure(errotMessage: "there was an error, try later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      return Right(
        UserModel.formFirebase(user).toEntity(),
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(errotMessage: e.errorMessage),
      );
    } catch (e) {
      return Left(
        ServerFailure(errotMessage: "there was an error, try later"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      UserEntity userEntity = UserModel.formFirebase(user).toEntity();
      return Right(
       userEntity,
      );
    } on CustomException catch (e) {
      return Left(
        ServerFailure(errotMessage: e.errorMessage),
      );
    } catch (e) {
      return Left(
        ServerFailure(errotMessage: "there was an error, try later"),
      );
    }
  }
}
