import 'package:dartz/dartz.dart';
import 'package:delivery_food/core/errors/custom_exception.dart';
import 'package:delivery_food/core/errors/failure.dart';
import 'package:delivery_food/features/auth/presentation/domain/auth_repos/auth_repo.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/service/firebase_auth_service.dart';

class AuthRepoImpl extends AuthRepo {
 final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async{
         User? user;
        try{
           user = await firebaseAuthService.createUserWithEmailAndPassword(
            email: email,
            password: password
          );
          UserEntity userEntity = UserEntity(
            email: email,
            password: password,
            uid: user.uid,
          );
          return Right(userEntity);
        }
        on CustomException catch(e){
          return Left(ServerFailure(errotMessage: e.errorMessage),);
        }
        catch(e){
          return Left(ServerFailure(errotMessage: "there was an error, try later"),);
        }
      }

  @override
  Future<Either<Failure, UserEntity>> siginInUserWithEmailAndPassword(
      {required String email, required String password}) async{
      User? user;
     try{
      user =await firebaseAuthService.siginInUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserEntity userEntity=UserEntity(email: email, password: password, uid: user.uid);
      return Right(userEntity);
     
     }
     on CustomException catch(e){
       return Left(ServerFailure(errotMessage: e.errorMessage),);
     }
     catch(e){
       return Left(ServerFailure(errotMessage: "there was an error, try later"),);
     }
  }
}
