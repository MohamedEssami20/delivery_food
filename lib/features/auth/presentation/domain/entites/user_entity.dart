class UserEntity {
  final String email;
  final String password;
   String? uid;
  final String userName;

  UserEntity(
      {required this.email,
      required this.password,
      required this.userName, this.uid});

  
    factory UserEntity.fromMap(Map<String, dynamic> data) {
    return UserEntity(
      email: data['email'],
      password: data['password'],
      uid: data['uid'],
      userName: data['userName'],
    );
  }
}
