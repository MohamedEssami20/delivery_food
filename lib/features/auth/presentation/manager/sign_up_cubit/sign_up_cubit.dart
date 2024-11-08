
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/models/user_model.dart';
import '../../domain/auth_repos/auth_repo.dart';
import '../../domain/entites/user_entity.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._authRepo) : super(SignUpInitial());
  final AuthRepo _authRepo;

  // create method that sign in user with email and password
  Future<void> createUserWithEmailAndPassword({
    required UserModel userModel,
  }) async {
    emit(SignUpLoading());
    final result = await _authRepo.createUserWithEmailAndPassword(
      userModel: userModel,
    );
    result.fold(
      (failure) => emit(
        SignUpFailure(errorMessage: failure.errotMessage),
      ),
      (user) => emit(
        SignUpSuccess(userEntity: user),
      ),
    );  
}
}


