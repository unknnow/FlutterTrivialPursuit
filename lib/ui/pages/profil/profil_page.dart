import 'dart:io';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/ui/pages/profil/bloc/profil_cubit.dart';
import 'package:fluttertrivialp/ui/pages/profil/bloc/profil_state.dart';
import 'package:image_picker/image_picker.dart';

import '../../../data/repositories/auth_repository.dart';
import '../../../data/repositories/user_repository.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  ProfilCubit? cubit;

  bool allowEdit = false;
  late TriviaUser user;

  TextStyle labelStyle =
  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle textStyle = const TextStyle(
    fontSize: 20,
  );

  TextEditingController pseudoController = TextEditingController();
  File _userAvatar = File("");

  void signOut() {
    cubit?.signOutUser();
    context.beamToNamed('/');
  }

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quizz"),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<UserRepository>(
                create: (context) => UserRepository.getInstance()),
            RepositoryProvider<AuthRepository>(
                create: (context) => AuthRepository.getInstance()),
          ],
          child: BlocProvider(
            create: (test) {
              cubit = ProfilCubit(
                  userRepository: RepositoryProvider.of<UserRepository>(test),
                  authRepository: RepositoryProvider.of<AuthRepository>(test));
              return cubit!..loadUser();
            },
            child: BlocConsumer<ProfilCubit, ProfilState>(
              listener: (context, state) {
                if (state is Error) {
                  print("ERROR");
                } else if (state is Loading) {
                  print("LOADING");
                } else if (state is Loaded) {
                  user = state.user;
                  pseudoController.text = user.pseudo!;
                }
              },
              builder: (context, state) {
                if (state is Error) {
                  return Text("");
                }
                if (state is Loaded) {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/backgroundApp.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Form(
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: InkWell(
                                    onTap: () async {
                                      XFile? image = await _picker.pickImage(
                                          source: ImageSource.gallery);
                                      setState(() {
                                        if (image != null) {
                                          _userAvatar = File(image.path);
                                        }
                                      });
                                    },
                                    child: _displayAvatar())),
                            Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    TextField(
                                      enabled: allowEdit,
                                      controller: pseudoController,
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(), labelText: "Pseudo"),
                                    ),
                                    const Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    Text("Score : ${user.score}", style: textStyle),
                                    const Divider(
                                      height: 10,
                                      color: Colors.transparent,
                                    ),
                                    Text("Games : ${user.games}", style: textStyle),
                                    Visibility(
                                      visible: allowEdit,
                                      child: TextButton(
                                        onPressed: () => {},
                                        child: const Text('Sauvegarder'),
                                      ),
                                    ),
                                    const Divider(
                                      height: 25,
                                      color: Colors.transparent,
                                    ),
                                    ElevatedButton(
                                        onPressed: signOut,
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.red),
                                        child: const Text('Déconnexion')),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Text("");
                }
              },
            ),
          ),
        )
    );
  }

  Widget _displayAvatar() => _userAvatar.path == ""
      ? const SizedBox(width: 150, height: 150, child: CircleAvatar(backgroundColor: Colors.blue, child: Text("AVATAR")))
      : SizedBox(
    width: 150,
    height: 150,
    child: CircleAvatar(
      backgroundImage: FileImage(_userAvatar),
    ),
  );
}

