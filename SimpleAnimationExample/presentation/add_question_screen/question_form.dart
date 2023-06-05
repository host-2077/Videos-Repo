import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/rootnavigationbar.dart';
import '../all_questions_screen/questions.dart';

class QuestionForm extends StatefulWidget {
  const QuestionForm({super.key});

  @override
  State<QuestionForm> createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController hint1Controller = TextEditingController();
  final TextEditingController hint2Controller = TextEditingController();
  final TextEditingController questionController = TextEditingController();
  final TextEditingController solutionController = TextEditingController();
  final SizedBox sizedBoxSpacer = const SizedBox(height: 70);

  void addCardToList() {
    final String title = titleController.text;
    final String hint1 = hint1Controller.text;
    final String hint2 = hint2Controller.text;
    final String question = questionController.text;
    final String solution = solutionController.text;

    final newCard = Cards(
      title: title,
      hint1: hint1,
      hint2: hint2,
      question: question,
      solution: solution,
    );

    questionlist.add(newCard);
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(
              hintText: "Enter the question's category",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            controller: questionController,
            decoration: const InputDecoration(
              hintText: "Enter the question",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            controller: hint1Controller,
            decoration: const InputDecoration(
              hintText: "Enter the first hint",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            controller: hint2Controller,
            decoration: const InputDecoration(
              hintText: "Enter the second hint",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          TextFormField(
            controller: solutionController,
            decoration: const InputDecoration(
              hintText: "Enter the answer",
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Please enter some text";
              }
              return null;
            },
          ),
          sizedBoxSpacer,
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  addCardToList();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RootNavigationBar()),
                    (route) => false,
                  );
                }
              },
              child: const Text("Create my question!"),
            ),
          )
        ],
      ),
    );
  }
}
