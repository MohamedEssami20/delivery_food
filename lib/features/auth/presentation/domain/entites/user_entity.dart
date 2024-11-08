class UserEntity {
  final String email;
  final String password;
  final String uid;
  final String userName;

  UserEntity(
      {required this.email,
      required this.password,
      required this.uid,
      required this.userName});

  factory UserEntity.fromMap(Map<String, dynamic> data) {
    return UserEntity(
      email: data['email'],
      password: data['password'],
      uid: data['uid'],
      userName: data['userName'],
    );
  }
}
