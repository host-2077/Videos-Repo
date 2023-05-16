import 'package:flutter/material.dart';
import '../components/questions.dart';
import '../question_screen02/question_screen.dart';
import '../random_screen03/random_screen.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardList = questionlist.map((card) {
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
          color: Colors.tealAccent,
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
    }).toList();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.1"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: cardList,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RandomScreen(),
            ),
          );
        },
        label: const Text("Random detail"),
        icon: const Icon(Icons.radar),
        backgroundColor: Colors.black12,
      ),
    );
  }
}
