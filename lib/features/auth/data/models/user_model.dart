import 'package:firebase_auth/firebase_auth.dart';

import '../../presentation/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.password, super.uid, required super.userName});


  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['password'],
      uid: json['uid'],
      userName: json['userName'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'uid': uid,
      'userName': userName,
    };
  }

  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
      email: userEntity.email,
      password: userEntity.password,
      uid: userEntity.uid,
      userName: userEntity.userName,
    );
  }
  
  factory UserModel.formFirebase(User user) {
    return UserModel(
      email: user.email!,
      password: "",
      uid: user.uid,
      userName: user.displayName!,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      email: email,
      password: password,
      uid: uid,
      userName: userName,
    );
  }
}
