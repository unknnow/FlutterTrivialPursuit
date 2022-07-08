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
  TextEditingController avatarController = TextEditingController();
  XFile? _userAvatar;

  _ProfilPageState() {
    pseudoController.text = user.pseudo.toString();
    avatarController.text = user.avatar.toString();
  }

  void saveForm() {
    setState(() {
      print(pseudoController.text);
      print(avatarController.text);
    });
  }

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  allowEdit = !allowEdit;
                });
              },
              icon: const Icon(Icons.edit, color: Colors.white))
        ],
      ),
      body: Center(
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
                            _userAvatar = image;
                          }
                        });
                      },
                      child:const SizedBox(
                          height: 150,
                          width: 150,
                          child: CircleAvatar(
                            backgroundImage: null,
                          )
                      )
                  )
              ),
              Text("Score : ${user.score}", style: textStyle),
              Text("Games : ${user.games}", style: textStyle),
              TextField(
                enabled: allowEdit,
                controller: pseudoController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: "Pseudo"),
              ),
              TextField(
                enabled: allowEdit,
                controller: avatarController,
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(), labelText: "Avatar"),
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
      ),
    );
  }

  Image? getImagePath(File file) {
    if (file != null) {
      return Image.asset(file.path);
    }
  }
}
