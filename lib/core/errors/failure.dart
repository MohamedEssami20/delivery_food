abstract class Failure {
  final String errotMessage;

  Failure({required this.errotMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errotMessage});
}