import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameCubit extends Cubit<GamesState> {
  final QuestionRepository repository;

  late Results _lastQuestion;

  List<Results>? listResults;

  int score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository}): super(const Loading());

  Future<void> fetchWord() async {

    score = 0;

    emit(Loading());

    try {
      listResults = await repository.getQuestionOfTheDay();
      emit(Saved(listResults!));
    } on Exception catch(exception) {
      emit(Error(exception.toString()));
    }
  }

  Future<void> selectAnswer(String selectedAnswer, int indexQuestion) async {

    bool finish = false;

    if(selectedAnswer == listResults![indexQuestion].correctAnswer) {
      score++;

      if((listResults!.length-1) == indexQuestion){
        finish = true;
      }

      emit(WrongAnswer(false, listResults![indexQuestion].correctAnswer.toString(), score, finish));
    } else {

      if((listResults!.length-1) == indexQuestion){
        finish = true;
      }

      emit(WrongAnswer(true, listResults![indexQuestion].correctAnswer.toString(), score, finish));
    }
  }
}
