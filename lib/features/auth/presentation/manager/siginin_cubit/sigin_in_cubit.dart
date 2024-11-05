import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';
import 'package:meta/meta.dart';
import '../../domain/auth_repos/auth_repo.dart';

part 'sigin_in_state.dart';

class SiginInCubit extends Cubit<SiginInState> {
  SiginInCubit(this._authRepo) : super(SiginInInitial());
  final AuthRepo _authRepo;

  // create method that sigin in user with email and password;

  Future<void> siginInUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(SiginInLoading());
    final result = await _authRepo.siginInUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(
        SiginInFailure(errorMessage: failure.errotMessage),
      ),
      (user) => emit(
        SiginInSuccess(userEntity: user),
      ),
    );
  }
}
