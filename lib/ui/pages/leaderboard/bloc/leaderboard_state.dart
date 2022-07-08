import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_state.freezed.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.loading() = LeaderboardLoading;
  const factory LeaderboardState.saved(List<TriviaUser> listUser) = LeaderboardLoaded;
  const factory LeaderboardState.error(String message) = LeaderboardError;
}
