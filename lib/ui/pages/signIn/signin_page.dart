import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/signIn/signin_cubit.dart';
import 'package:fluttertrivialp/ui/pages/signIn/signin_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInState();
}

class _SignInState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  SignInCubit? cubit;

  void saveForm() {
    cubit?.signInUser(emailController.text, passwordController.text);
    context.beamToNamed('home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SignIn"),
        ),
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<UserRepository>(
                create: (context) => UserRepository.getInstance()),
            RepositoryProvider<AuthRepository>(
                create: (context) => AuthRepository.getInstance())
          ],
          child: BlocProvider(
            create: (context) {
              cubit = SignInCubit(
                  userRepository:
                      RepositoryProvider.of<UserRepository>(context),
                  authRepository:
                      RepositoryProvider.of<AuthRepository>(context));
              return cubit!;
            },
            child: BlocConsumer<SignInCubit, SignInState>(
              listener: (context, state) {
                if (state is Error) {
                } else if (State is Saved) {}
              },
              builder: (context, state) {
                if (state is Saved) {
                  return Text("Connected");
                } else if (state is Loading) {
                  return Center(
                    child: Form(
                      child: Column(
                        children: [
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
                          ElevatedButton(
                            onPressed: saveForm,
                            child: const Text('Connexion'),
                          ),
                        ],
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
