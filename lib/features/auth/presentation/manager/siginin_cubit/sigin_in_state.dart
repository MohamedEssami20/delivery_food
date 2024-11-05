part of 'sigin_in_cubit.dart';

@immutable
sealed class SiginInState {}

final class SiginInInitial extends SiginInState {}

final class SiginInLoading extends SiginInState {}

final class SiginInFailure extends SiginInState {
  final String errorMessage;

  SiginInFailure({required this.errorMessage});
}

final class SiginInSuccess extends SiginInState {
  final UserEntity userEntity;

  SiginInSuccess({required this.userEntity});
}
