import 'package:flutter/material.dart';
import 'question_form_widget.dart';

class AddQuestionScreen extends StatelessWidget {
  const AddQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.2"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: const Text(
                'Create your own question:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const QuestionForm(),
          ],
        ),
      ),
    );
  }
}
