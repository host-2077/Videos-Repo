import 'package:flutter/material.dart';
import 'questions.dart';
import '../question_screen/question_screen.dart';

class AllQuestionsScreen extends StatefulWidget {
  const AllQuestionsScreen({Key? key}) : super(key: key);

  @override
  State<AllQuestionsScreen> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<AllQuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // hides back button in the appbar.
        title: const Text("Trivia App 1.4"),
      ),
      body: ListView.builder(
        itemCount: questionlist.length,
        itemBuilder: (BuildContext context, int index) {
          final card = questionlist[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionScreen(
                    title: card.title,
                    hint1: card.hint1,
                    hint2: card.hint2,
                    question: card.question,
                    solution: card.solution,
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Column(
                children: [
                  Text(
                    card.title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
