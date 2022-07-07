import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/repositories/question_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_cubit.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GameState();
}

class _GameState extends State<GamePage> {
  GameCubit? cubit;

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
            create: (context) {
              cubit = GameCubit(
                  repository:
                      RepositoryProvider.of<QuestionRepository>(context));
              return cubit!..fetchWord();
            },
            child: BlocConsumer<GameCubit, GameState>(
              listener: (context, state) {
                if (state is QuestionError) {
                  print(state.message);
                } else if (State is QuestionLoaded) {}
              },
              builder: (context, state) {
                if (state is QuestionLoading) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/backgroundApp.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    ),
                  );
                } else if (state is QuestionLoaded) {
                  return Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/backgroundApp.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Card(
                          child: SizedBox(
                            width: 300,
                            height: 100,
                            child: Center(child: Text('Question : ${state.list.first.question}')),
                          ),
                        ),
                      ),
                  );
                } else {
                  return Text("Error UI");
                }
              },
            ),
          ),
        ));
  }
}
