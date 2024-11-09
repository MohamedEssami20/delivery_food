import 'dart:developer';

import 'package:delivery_food/core/errors/custom_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  //create method that sign in user with google form firebase;
  Future<User> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      throw CustomException(errorMessage: "sign in with google was canceld");
    }
    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    // Once signed in, return the UserCredential
    return userCredential.user!;
  }

  // create method that sigin with facebook form firebase;
  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();
    if (loginResult.status != LoginStatus.success) {
      throw CustomException(
          errorMessage: "the sign in with facebook was canceld");
    }
    // Create a credential from the access token
    final facebookAuthCredential = FacebookAuthProvider.credential(
      loginResult.accessToken!.tokenString,
    );
    // Once signed in, return the UserCredential
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    return userCredential.user!;
  }
}
