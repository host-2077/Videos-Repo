import 'package:flutter/material.dart';
import '../screen02/question_screen.dart';
import '../screen03/random_screen.dart';
import 'home_widgets/first_column.dart';
import 'home_widgets/questions_card.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<CartaDePreguntas> cards = [
    CartaDePreguntas(
      title: "Question 1: Category > > Sports",
      hint1: "Started in > > California, USA",
      hint2: "4 Wheels",
      question: "What is one of the newest Olympic sports that exist?",
      solution: "Skateboarding",
    ),
    CartaDePreguntas(
      title: "Question 2: Category > > Comics",
      hint1: "Real Name > > Chato Santana",
      hint2: "Power > > Fire",
      question: "What's the name of a latinamerican DC villain?",
      solution: "Diablo",
    ),
  ];

  // This function adds a new card to the list in real time
  /* void addCardToList(CartaDePreguntas card) {
    setState(() {
      cards.add(card);
    });
  } */

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 1000;

    final cardWidth = isSmallScreen ? null : screenSize.width / 3;

    final cardList = cards.map((card) {
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
          width: cardWidth,
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

    final cardListWidget = isSmallScreen
        ? Column(
            children: cardList,
          )
        : ListView(
            children: [
              Row(
                children: cardList,
              ),
            ],
          );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.2"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            FirstColumn(
              cardListWidget: cardListWidget,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RandomScreen(),
            ),
          );
        },
      ),
    );
  }
}
