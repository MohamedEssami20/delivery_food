class UserEntity {
  final String email;
  final String password;
  final String uid;

  UserEntity({required this.email, required this.password, required this.uid});


 factory UserEntity.fromMap(Map<String, dynamic> data) {
    return UserEntity(
      email: data['email'],
      password: data['password'],
      uid: data['uid'],
    );
  }
}
