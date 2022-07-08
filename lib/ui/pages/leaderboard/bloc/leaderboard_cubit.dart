import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/ui/pages/leaderboard/bloc/leaderboard_state.dart';

class LeaderboardCubit extends Cubit<LeaderboardState> {
  final UserRepository repository;

  LeaderboardCubit({required this.repository}) : super(const LeaderboardLoading());

  Future<void> fetchWord() async {
    emit(LeaderboardLoading());

    try {
      List<TriviaUser> listUsers = await repository.getAllUsers();
      emit(LeaderboardLoaded(listUsers));
    } on Exception catch (exception) {
      emit(LeaderboardError(exception.toString()));
    }
  }
}
