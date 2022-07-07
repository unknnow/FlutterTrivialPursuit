import 'package:fluttertrivialp/data/entities/Results.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.loading() = QuestionLoading;
  const factory GameState.saved(List<Results> list) = QuestionLoaded;
  const factory GameState.error(String message) = QuestionError;
}
