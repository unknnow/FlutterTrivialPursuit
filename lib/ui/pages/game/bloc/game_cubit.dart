import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';
import 'package:fluttertrivialp/data/entities/Results.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameCubit extends Cubit<GameState> {
  final QuestionRepository repository;

  late Results _lastQuestion;

  int score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository}) : super(const QuestionLoading());

  Future<void> fetchWord() async {
    emit(QuestionLoading());

    try {
      final list = await repository.getQuestionOfTheDay();
      _lastQuestion = list.last;
      emit(QuestionLoaded(list));
    } on Exception catch (exception) {
      emit(QuestionError(exception.toString()));
    }
  }
}
