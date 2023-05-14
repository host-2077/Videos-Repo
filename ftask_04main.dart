import 'package:flutter/material.dart';

class Cards {
  String category;
  String question;
  String answer;

  Cards({required this.category, required this.question, required this.answer});
}

void main() {
  var questions = [
    Cards(
        category: "Sports",
        question: "What is one of the newest Olympic sports that exist?",
        answer: "Skateboarding"),
    Cards(
        category: "Comics",
        question: "What's the name of a latinamerican DC villain?",
        answer: "Diablo"),
    Cards(
        category: "Tech",
        question: "What is the best programming langauge to create apps?",
        answer: "Flutter"),
    Cards(
        category: "Sports",
        question:
            "What do you call it when a bowler makes three strikes in a row?",
        answer: "Turkey"),
    Cards(
        category: "Comics",
        question: "Who is the fastest DC character?",
        answer: "The Flash"),
    Cards(
        category: "Tech",
        question: "One gigabyte is equal to how many megabytes?",
        answer: "1000"),
    Cards(
        category: "Sports",
        question: "Which boxer fought against Muhammad Ali and won?",
        answer: "Joe Frazier"),
    Cards(
        category: "Comics",
        question: "Who is the tyrannical ruler of the planet Apokolips?",
        answer: "Darkseid"),
    Cards(
        category: "Tech",
        question: "What does CPU stand for?",
        answer: "Central Processing Unit"),
    Cards(
        category: "Sports",
        question:
            "In motor racing, what color is the flag they wave to indicate the winner?",
        answer: "Checkered flag"),
    Cards(
        category: "Comics",
        question: "How did Deathstroke get his powers?",
        answer: "A military experiment"),
    Cards(
        category: "Tech",
        question: "What does “HTTP” stand for?",
        answer: "Hypertext Transfer Protocol"),
    Cards(
        category: "Sports",
        question: "How many holes are played in an average round of golf?",
        answer: "18"),
    Cards(
        category: "Comics",
        question: "Dick Grayson was first known as Robin and later as...?",
        answer: "Nightwing"),
    Cards(
        category: "Tech",
        question: "What is a Fat Arrow Notation in Dart?",
        answer: "=>"),
  ];
  runApp(MyApp(questions: questions));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.questions,
  });

  final List<Cards> questions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: Home(questions: questions),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.questions}) : super(key: key);

  final List<Cards> questions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia Maker 1.0"),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          final card = questions[index];
          return Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(card.answer),
                      ),
                    );
                  },
                  child: Container(
                    width: 300,
                    color: Colors.tealAccent,
                    child: Column(
                      children: [
                        Text(
                          card.category,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          card.question,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
