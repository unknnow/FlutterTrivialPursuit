import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/profil/bloc/profil_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/entities/User.dart';

class ProfilCubit extends Cubit<ProfilState> {
  final UserRepository userRepository;
  final AuthRepository authRepository;

  ProfilCubit({required this.userRepository, required this.authRepository}): super(const Loading());

  Future<void> loadUser() async {
    emit(Loading());

    try {
      String? userId = authRepository.getUserId();
      TriviaUser? user = await userRepository.getUserByUid(userId!);

      if (user != null) {
        emit(Loaded(user));
      }
    } on Exception catch(exception) {
      emit(Error(exception.toString()));
    }
  }

  void signOutUser() {
    authRepository.signOut();
    emit(const Loading());
  }
}
