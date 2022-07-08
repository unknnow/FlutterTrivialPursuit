import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:fluttertrivialp/data/repositories/auth_repository.dart';
import 'package:fluttertrivialp/data/repositories/user_repository.dart';
import 'package:fluttertrivialp/ui/pages/signUp/signup_cubit.dart';
import 'package:fluttertrivialp/ui/pages/signUp/signup_state.dart';
import 'package:image_picker/image_picker.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  TextEditingController pseudoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File _userAvatar = File("");
  XFile _userAvatarUpload = XFile("");

  SignUpCubit? cubit;

  void saveForm() {
    cubit?.registerUser(
        emailController.text,
        passwordController.text,
        TriviaUser.fromJson({
          'pseudo': pseudoController.text,
          'games': 1,
          'score': 1,
          'avatar': _userAvatar.path,
        }),
        _userAvatarUpload);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
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
              cubit = SignUpCubit(
                  userRepository:
                      RepositoryProvider.of<UserRepository>(context),
                  authRepository:
                      RepositoryProvider.of<AuthRepository>(context));
              return cubit!;
            },
            child: BlocConsumer<SignUpCubit, SignUpState>(
              listener: (context, state) {
                if (state is Error) {
                } else if (State is Saved) {}
              },
              builder: (context, state) {
                if (state is Saved) {
                  return Text("Saved");
                } else if (state is Loading) {
                  return Center(
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
                                        _userAvatarUpload = image;
                                      }
                                    });
                                  },
                                  child: _displayAvatar())),
                          TextField(
                            controller: pseudoController,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: "Pseudo"),
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
                          ElevatedButton(
                            onPressed: saveForm,
                            child: const Text('Enregistrer'),
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

  Widget _displayAvatar() => _userAvatar.path == ""
      ? const Icon(Icons.ac_unit)
      : SizedBox(
          width: 200,
          height: 200,
          child: CircleAvatar(
            backgroundImage: FileImage(_userAvatar),
          ),
        );
}
