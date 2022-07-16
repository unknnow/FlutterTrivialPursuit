import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/signIn/bloc/signin_cubit.dart';
import 'package:fluttertrivialp/ui/pages/signIn/bloc/signin_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignInCubit? cubit;

  void loginUser() {
    cubit?.signInUser(emailController.text, passwordController.text);
    print(cubit?.checkAlreadyLog());
    if (cubit?.checkAlreadyLog() == true) {
      context.beamToNamed('home');
    }
  }

  void signOut() {
    cubit?.signOutUser();
    context.beamToNamed('');
  }

  void toHomePage() {
    context.beamToNamed('home');
  }

  void toRegisterPage() {
    context.beamToNamed('register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Connexion"),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<UserRepository>(
                create: (context) => UserRepository.getInstance()),
            RepositoryProvider<AuthRepository>(
                create: (context) => AuthRepository.getInstance())
          ],
          child: BlocProvider(
            create: (test) {
              cubit = SignInCubit(
                  userRepository: RepositoryProvider.of<UserRepository>(test),
                  authRepository: RepositoryProvider.of<AuthRepository>(test));
              return cubit!..checkAlreadyLogEmit();
            },
            child: BlocConsumer<SignInCubit, SignInState>(
              listener: (context, state) {
                /*
                BUG LE LISTENER NE FONCTIONNE - PROBLEME DE L'APP IMPOSSIBLE A RESOUDRE AVEC UN SIMPLE REBUILD
                https://github.com/felangel/bloc/issues/2434
                 */
              },
              builder: (context, state) {
                if (state is Loading) {
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
                          width: 350,
                          height: 260,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              child: Column(
                                children: [
                                  const Text(
                                    "Connexion",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent),
                                  ),
                                  TextField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: "Email"),
                                  ),
                                  TextField(
                                    controller: passwordController,
                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        labelText: "Password"),
                                  ),
                                  const Divider(
                                    height: 5,
                                    color: Colors.transparent,
                                  ),
                                  ElevatedButton(
                                    onPressed: loginUser,
                                    child: const Text('Connexion'),
                                  ),
                                  const Divider(
                                    height: 2,
                                    color: Colors.transparent,
                                  ),
                                  InkWell(
                                    onTap: toRegisterPage,
                                    child: const Text(
                                      "Créer un nouveau compte",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (state is Saved) {
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
                          width: 350,
                          height: 110,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              child: Column(
                                children: [
                                  const Text(
                                    "Connexion réussi !",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blueAccent),
                                  ),
                                  const Divider(
                                    height: 10,
                                    color: Colors.transparent,
                                  ),
                                  ElevatedButton(
                                    onPressed: toHomePage,
                                    child: const Text('Continuer'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else if (state is AlreadyLog) {
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
                          width: 350,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              child: Column(
                                children: [
                                  const Text(
                                    "Vous êtes dejà authentifier sur un compte !",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blueAccent),
                                  ),
                                  const Divider(
                                    height: 10,
                                    color: Colors.transparent,
                                  ),
                                  ElevatedButton(
                                    onPressed: toHomePage,
                                    child: const Text('Continuer'),
                                  ),
                                  const Divider(
                                    height: 2,
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
                        ),
                      ),
                    ),
                  );
                } else {
                  return Text("Error");
                }
              },
            ),
          ),
        ));
  }
}
