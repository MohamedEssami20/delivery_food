import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_food/features/auth/presentation/domain/entites/user_entity.dart';
import 'package:meta/meta.dart';
import '../../../data/models/user_model.dart';
import '../../domain/auth_repos/auth_repo.dart';

part 'sigin_in_state.dart';

class SiginInCubit extends Cubit<SiginInState> {
  SiginInCubit(this._authRepo) : super(SiginInInitial());
  final AuthRepo _authRepo;

  // create method that sigin in user with email and password;

  Future<void> siginInUserWithEmailAndPassword({
    required UserModel userModel,
  }) async {
    emit(SiginInLoading());
    final result = await _authRepo.siginInUserWithEmailAndPassword(
      userModel: userModel,
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

  //create method that sign in with google in firebas;
  
}
