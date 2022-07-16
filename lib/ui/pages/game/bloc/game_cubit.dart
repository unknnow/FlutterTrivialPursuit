import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';
import 'package:fluttertrivialp/data/entities/Questions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameCubit extends Cubit<GamesState> {
  final QuestionRepository repository;
  final UserRepository userRepository;
  final AuthRepository authRepository;

  late Question _lastQuestion;

  List<Question>? listResults;

  int score = 0;
  String selectedAnswer = '';

  GameCubit({required this.repository, required this.userRepository, required this.authRepository}): super(const Loading());

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

  Future<void> saveScoreUser(int score) async {
    try {
      String? userId = authRepository.getUserId();
      String userDocId = await userRepository.getUserDocIdByUid(userId!);
      TriviaUser? user = await userRepository.getUserByUid(userId);

      if (user != null) {
        user.setScore(user.score + score);

        userRepository.updateUser(user, userDocId);
      }
    } on Exception catch(exception) {
      emit(Error(exception.toString()));
    }
  }
}
