import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertrivialp/data/entities/User.dart';
import 'package:image_picker/image_picker.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool allowEdit = false;
  TriviaUser user = TriviaUser.fromJson({
    'id': 1,
    'score': 999,
    'pseudo': 'Corentin',
    'avatar': 'URL',
    'games': 1
  });

  TextStyle labelStyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle textStyle = const TextStyle(
    fontSize: 17,
  );

  TextEditingController pseudoController = TextEditingController();
  File _userAvatar = File("");

  _ProfilPageState() {
    pseudoController.text = user.pseudo.toString();
  }

  void saveForm() {
    setState(() {
      print(pseudoController.text);
    });
  }

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
        backgroundColor: Colors.blue.withOpacity(0.75),
        actions: [
          IconButton(
              onPressed: () {                setState(() {
                  allowEdit = !allowEdit;
                });
              },
              icon: const Icon(Icons.edit, color: Colors.white))
        ],
      ),
      body: Container(
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
                  child: Column(
                    children: [
                      Text("Score : ${user.score}", style: textStyle),
                      Text("Games : ${user.games}", style: textStyle),
                      TextField(
                        enabled: allowEdit,
                        controller: pseudoController,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(), labelText: "Pseudo"),
                      ),
                      Visibility(
                        visible: allowEdit,
                        child: TextButton(
                          onPressed: saveForm,
                          child: const Text('Sauvegarder'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _displayAvatar() => _userAvatar.path == ""
      ? const SizedBox(width: 150, height: 150, child: CircleAvatar(child: Text("AVATAR"), backgroundColor: Colors.blue))
      : SizedBox(
          width: 150,
          height: 150,
          child: CircleAvatar(
            backgroundImage: FileImage(_userAvatar),
          ),
        );
}
