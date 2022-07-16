import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/signUp/bloc/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  SignUpCubit({required this.authRepository, required this.userRepository}): super(const Loading());

  Future<void> registerUser(String email, String password, TriviaUser user, XFile avatar) async {
    emit(const Loading());
    User? userFromFirebase = await authRepository.signUp(email: email, password: password);
    if (userFromFirebase != null) {
      await userRepository.createUser(TriviaUser.fromJson({
        'id': userFromFirebase.uid,
        'score': user.score,
        'pseudo': user.pseudo,
        'avatar': user.avatar,
        'games': user.games
      }));
      await userRepository.uploadAvatar(avatar, userFromFirebase.uid);
      emit(const Saved());
    } else {
      emit(const Error('Register error'));
    }
  }
}