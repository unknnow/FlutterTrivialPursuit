import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_cubit.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';
import 'package:html_unescape/html_unescape.dart';
import 'dart:convert' show utf8;

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  State<GamesPage> createState() => _SignInState();
}

class _SignInState extends State<GamesPage> {
  GameCubit? cubit;

  var index = 0;
  late List<String> liste;
  var questions;
  var showMessageReponse = false;
  var isWrongAnswer = false;
  var goodAnswer = null;
  int score = 0;
  bool isFinish = false;
  var unescape = new HtmlUnescape();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quizz"),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<QuestionRepository>(
                create: (context) => QuestionRepository.getInstance()),
            RepositoryProvider<UserRepository>(
                create: (context) => UserRepository.getInstance()),
            RepositoryProvider<AuthRepository>(
                create: (context) => AuthRepository.getInstance()),
          ],
          child: BlocProvider(
            create: (test) {
              cubit = GameCubit(
                  repository: RepositoryProvider.of<QuestionRepository>(test),
                  userRepository: RepositoryProvider.of<UserRepository>(test),
                  authRepository: RepositoryProvider.of<AuthRepository>(test));
              return cubit!..fetchWord();
            },
            child: BlocConsumer<GameCubit, GamesState>(
              listener: (context, state) {
                if (state is Error) {
                } else if (State is Loading) {}

                if (state is Saved) {
                  showMessageReponse = false;
                  isWrongAnswer = false;
                  goodAnswer = null;
                  score = 0;
                  isFinish = false;
                  index = 0;
                  liste = state.liste[index].incorrectAnswers as List<String>;
                  liste.insert(0, state.liste[index].correctAnswer!);
                  liste.shuffle();
                  questions = state.liste;
                }

                if (state is WrongAnswer) {
                  isWrongAnswer = state.isWrong;
                  goodAnswer = state.goodAnswer;
                  if (!state.isFinish) {
                    index++;
                    showMessageReponse = true;

                    score = state.score;
                    liste = questions[index].incorrectAnswers as List<String>;
                    liste.insert(0, questions[index].correctAnswer!);
                    liste.shuffle();
                  } else {
                    isFinish = true;
                    cubit?.saveScoreUser(state.score);
                  }
                }
              },
              builder: (context, state) {
                if (state is Error) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Column(
                      children: const [
                        Icon(Icons.warning),
                        Text(
                            "Il y a une erreur lors de la récupération de données."),
                        Text("Notre équipe technique règle le problème"),
                        Text(
                            "Sauf Julien... qui... change l'icone (peut-être)."),
                      ],
                    )),
                  );
                }
                if (state is Loading) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/backgroundApp.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                        child: Text("Chargement de la question...")),
                  );
                } else {
                  if (!isFinish) {
                    /*
                    WIDGET QUIZZ GAME MAIN PART
                     */
                    return Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/backgroundApp.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Form(
                          child: Center(
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                    child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Question ${index + 1}',
                                        style: const TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                      const Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Divider(
                                          height: 5,
                                        ),
                                      ),
                                      Text(
                                        unescape.convert(utf8
                                            .decode(utf8.encode(questions[index]
                                                .question
                                                .toString()))
                                            .toString()),
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                              for (var i in liste) showResults(i, index),
                              Visibility(
                                visible: showMessageReponse,
                                child: showMessage(isWrongAnswer, goodAnswer),
                              ),
                              Card(
                                child: SizedBox(
                                  width: 200,
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Text(
                                        "Score : $score/10",
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    );
                  } else {
                    /*
                    WIDGET FIN DE PARTIE
                     */
                    return Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/backgroundApp.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            showMessage(isWrongAnswer, goodAnswer),
                            Card(
                              child: SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Text("Partie terminée !",
                                          style: TextStyle(fontSize: 20)),
                                      const Divider(
                                        height: 5,
                                        color: Colors.transparent,
                                      ),
                                      Text(
                                        "Votre score est de : $score/10",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                        ),
                                        onPressed: () {
                                          cubit!..fetchWord();
                                        },
                                        child: const Text(
                                            "Recommencer une partie"),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                }
              },
            ),
          ),
        ));
  }

  Widget showResults(String i, int index) {
    return Card(
      child: SizedBox(
        width: 300,
        height: 50,
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () {
            cubit?.selectAnswer(i, index);
          },
          child: Text(unescape
              .convert(utf8.decode(utf8.encode(i.toString())).toString())
              .toString()),
        ),
      ),
    );
  }

  Widget showMessage(bool isWrongAnswer, String? goodAnswer) {
    if (isWrongAnswer) {
      /*
      CARD MAUVAISE REPONSE
       */
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const Text(
                  'Mauvaise réponse...',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Text(
                  'La bonne réponse était : $goodAnswer',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      /*
      CARD BONNE REPONSE
       */
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: Colors.green,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Bonne réponse !',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      );
    }
  }
}
