import 'dart:developer';

import 'package:delivery_food/core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
// create method that register user to firebase;
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in Firebase Auth service= ${e.toString()} and  e.code=${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(errorMessage: "the password is too weak");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            errorMessage: "User with this email already exists");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(errorMessage: "check your internet connection");
      } else {
        throw CustomException(
            errorMessage: "there was an error please try again later");
      }
    } catch (e) {
      log("Exception in Firebase Auth service= ${e.toString()}");
      throw CustomException(
          errorMessage: "there was an error please try again later");
      
    }
  }

  //create method that login user to firebase;
  Future<User> siginInUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in Firebase Auth service= ${e.toString()} and  e.code=${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException(errorMessage: "No user found for that email.");
      } else if (e.code == 'wrong-password') {
        throw CustomException(errorMessage: "Wrong password for that user.");
      } else if (e.code == 'network-request-failed') {
        throw CustomException(errorMessage: "check your internet connection");
      } else {
        throw CustomException(
            errorMessage: "there was an error please try again later");
      }
    } catch (e) {
      log("Exception in Firebase Auth service= ${e.toString()}");
      throw CustomException(
          errorMessage: "there was an error please try again later");
    }
  }
}
