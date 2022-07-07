import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/signIn/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository authRepository;
  final UserRepository userRepository;

  SignInCubit({required this.authRepository, required this.userRepository}): super(const Loading());

  Future<void> signInUser(String email, String password) async {
    emit(const Loading());
    User? userFromFirebase = await authRepository.signIn(email: email, password: password);
    if (userFromFirebase != null) {
      emit(const Saved());
    } else {
      emit(const Error('Register error'));
    }
  }
}