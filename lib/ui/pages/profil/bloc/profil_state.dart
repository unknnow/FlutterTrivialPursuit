import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profil_state.freezed.dart';

@freezed
class ProfilState with _$ProfilState {
  const factory ProfilState.loading() = Loading;
  const factory ProfilState.loaded(TriviaUser user) = Loaded;
  const factory ProfilState.error(String message) = Error;
}
