import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cards {
  String category;
  String question;
  String answer;

  Cards({required this.category, required this.question, required this.answer});
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Cards> _questions = [
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: Home(questions: _questions),
    );
  }
}

class Home extends StatefulWidget {
  final List<Cards> questions;
  const Home({Key? key, required this.questions}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Cards> _questions;

  @override
  void initState() {
    super.initState();
    _questions = widget.questions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: const Text("Trivia Maker 1.0"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _questions.add(
              Cards(
                category: "New Category",
                question: "New Question",
                answer: "New Answer",
              ),
            );
          });
        },
      ),
      body: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 1000) {
                return HorizontalHome(questions: _questions);
              } else {
                return VerticalHome(questions: _questions);
              }
            },
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Stack(
              children: const [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png",
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Text("Welcome!"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalHome extends StatelessWidget {
  const VerticalHome({
    super.key,
    required this.questions,
  });

  final List<Cards> questions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        );
      },
    );
  }
}

class HorizontalHome extends StatelessWidget {
  const HorizontalHome({
    super.key,
    required this.questions,
  });

  final List<Cards> questions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        final card = questions[index];
        return Center(
          child: Row(
            children: [
              const SizedBox(
                width: 45,
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
                  height: 60,
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
              const SizedBox(
                width: 45,
              ),
            ],
          ),
        );
      },
    );
  }
}
