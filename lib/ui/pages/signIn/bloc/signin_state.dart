import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.loading() = Loading;
  const factory SignInState.saved() = Saved;
  const factory SignInState.alreadyLog() = AlreadyLog;
  const factory SignInState.error(String message) = Error;
}
