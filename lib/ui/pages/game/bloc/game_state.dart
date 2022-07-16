import 'package:fluttertrivialp/data/entities/Questions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
class GamesState with _$GamesState {
  const factory GamesState.loading() = Loading;
  const factory GamesState.saved(List<Question> liste) = Saved;
  const factory GamesState.error(String message) = Error;
  const factory GamesState.answerSelected(String selectedAnswer, int indexQuestion) = AnswerSelected;
  const factory GamesState.wrongAnswer(bool isWrong, String? goodAnswer, int score, bool isFinish) = WrongAnswer;
  const factory GamesState.gameFinish(int score) = GameFinish;
}
