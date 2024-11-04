class CustomException implements Exception {
  final String errorMessage;

  CustomException({required this.errorMessage});

  @override
  String toString() {
    errorMessage.toString();
    return super.toString();
  }
}
