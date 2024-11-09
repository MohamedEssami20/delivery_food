
import 'package:delivery_food/core/service/firebase_auth_service.dart';
import 'package:delivery_food/core/service/firestor_service.dart';
import 'package:delivery_food/features/auth/presentation/domain/auth_repos/auth_repo.dart';
import 'package:delivery_food/features/auth/presentation/domain/auth_repos/auth_repo_impl.dart';
import 'package:delivery_food/features/auth/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/presentation/manager/siginin_cubit/sigin_in_cubit.dart';

class GetItService {
  static final GetIt getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
    getIt.registerSingleton<FirestorService>(FirestorService());
    getIt.registerSingleton<AuthRepo>(
      AuthRepoImpl(
        firebaseAuthService: getIt.get<FirebaseAuthService>(),
        firestorService: getIt.get<FirestorService>(),
      ),
    );
    getIt.registerSingleton<SiginInCubit>(
      SiginInCubit(
        getIt.get<AuthRepo>(),
      ),
    );
    getIt.registerSingleton<SignUpCubit>(
      SignUpCubit(
        getIt.get<AuthRepo>(),
      ),
    );
  }
}
