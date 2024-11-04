import '../../presentation/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.password, required super.uid});


  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['password'],
      uid: json['uid'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'uid': uid,
    };
  }

  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
      email: userEntity.email,
      password: userEntity.password,
      uid: userEntity.uid,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      email: email,
      password: password,
      uid: uid,
    );
  }
}
