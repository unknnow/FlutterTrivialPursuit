import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_cubit.dart';
import 'package:fluttertrivialp/ui/pages/game/bloc/game_state.dart';
import 'package:fluttertrivialp/ui/pages/leaderboard/bloc/leaderboard_cubit.dart';
import 'package:fluttertrivialp/ui/pages/leaderboard/bloc/leaderboard_state.dart';

class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({Key? key}) : super(key: key);

  @override
  State<LeaderboardPage> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<LeaderboardPage> {
  LeaderboardCubit? cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Classement"),
          centerTitle: true,
          backgroundColor: Colors.blue.withOpacity(0.75),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<UserRepository>(
                create: (context) => UserRepository.getInstance()),
          ],
          child: BlocProvider(
            create: (context) {
              cubit = LeaderboardCubit(
                  repository: RepositoryProvider.of<UserRepository>(context));
              return cubit!..fetchWord();
            },
            child: BlocConsumer<LeaderboardCubit, LeaderboardState>(
              listener: (context, state) {
                if (state is LeaderboardError) {
                  // print(state.message);
                } else if (State is LeaderboardLoaded) {}
              },
              builder: (context, state) {
                if (state is LeaderboardLoading) {
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
                } else if (state is LeaderboardLoaded) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/backgroundApp.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Card(
                        color: Colors.white,
                        child: Scrollbar(
                          interactive: true,
                          child: ListView.builder(
                              itemBuilder: (BuildContext context, int index) {
                                var currentUser = state.listUser[index];

                                return ListTile(
                                  leading: getLeading(currentUser.pseudo.toString()),
                                  title: Column(
                                    children: [
                                      Text(currentUser.pseudo.toString()),
                                      Text("score: ${currentUser.score}"),
                                    ],
                                  ),
                                  trailing: getTrailing(index),
                                  tileColor: index % 2 == 0
                                      ? Colors.grey.withOpacity(0.25)
                                      : Colors.white,
                                );
                              },
                              itemCount: state.listUser.length
                          ),
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

  Widget getLeading(String pseudo) {
    return SizedBox(
      height: 35,
      width: 35,
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(pseudo.characters.first.toUpperCase()),
      ),
    );
  }

  Widget getTrailing(int index) {
    if (index < 3) {
      return SvgPicture.asset("assets/icons/medal.svg",
          color: _getTrailingColor(index));
    }
    return Text(index.toString());
  }

  Color? _getTrailingColor(int index) {
    if (index == 0) {
      return Colors.yellow;
    } else if (index == 1) {
      return Colors.grey;
    } else if (index == 2) {
      return Colors.orangeAccent;
    }

    return null;
  }
}
