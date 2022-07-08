import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/repositories/question_repository.dart';
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
          title: Text("Quizz"),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<QuestionRepository>(
                create: (context) => QuestionRepository.getInstance()),
          ],
          child: BlocProvider(
            create: (test) {
              cubit = GameCubit(
                  repository: RepositoryProvider.of<QuestionRepository>(test));
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
                  }
                }
              },
              builder: (context, state) {
                if (state is Error) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Column(
                      children: [
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
                  return Center(child: Text("Chargement de la question..."));
                } else {
                  if (!isFinish) {
                    return Center(
                      child: Form(
                        child: Center(
                          child: Column(children: [
                            Visibility(
                              visible: showMessageReponse,
                              child: showMessage(isWrongAnswer, goodAnswer),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Question ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                  child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Card(
                                      color: Colors.grey[200],
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(unescape.convert(utf8
                                            .decode(utf8.encode(questions[index]
                                                .question
                                                .toString()))
                                            .toString())),
                                      ),
                                    ),
                                    const Divider(
                                      height: 10,
                                      thickness: 2,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Colors.grey,
                                    ),
                                    for (var i in liste) showResults(i, index),
                                  ],
                                ),
                              )),
                            ),
                            Text(
                              "Score : $score/10",
                              style: const TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    );
                  } else {
                    return Center(
                        child: Column(
                      children: [
                        showMessage(isWrongAnswer, goodAnswer),
                        Text("Partie terminée !"),
                        Text(
                            "Votre score est de : " + score.toString() + "/10"),
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            cubit!..fetchWord();
                          },
                          child: Text("Recommencer une partie"),
                        )
                      ],
                    ));
                  }
                }
              },
            ),
          ),
        ));
  }

  Widget showResults(String i, int index) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {
        cubit?.selectAnswer(i, index);
      },
      child: Text(unescape
          .convert(utf8.decode(utf8.encode(i.toString())).toString())
          .toString()),
    );
  }

  Widget showMessage(bool isWrongAnswer, String? goodAnswer) {
    if (isWrongAnswer) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Mauvaise réponse...',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red[500],
              ),
            ),
          ),
          Text('La bonne réponse était : $goodAnswer'),
          const Divider(
            height: 10,
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: Colors.black,
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bonne réponse !',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green[500],
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 2,
            indent: 0,
            endIndent: 0,
            color: Colors.black,
          ),
        ],
      );
    }
  }
}
