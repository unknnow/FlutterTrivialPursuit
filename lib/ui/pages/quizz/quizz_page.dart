import 'package:flutter/material.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quizz"),
      ),
      body: const Center(
        child: Text(
          'Quizz',
        ),
      ),
    );
  }
}