import 'package:flutter/material.dart';
import 'home_widgets/add_question.dart';
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
      categoria: "Sports",
      pregunta: "What is one of the newest Olympic sports that exist?",
      respuesta: "Skateboarding",
    ),
    CartaDePreguntas(
      categoria: "Comics",
      pregunta: "What's the name of a latinamerican DC villain?",
      respuesta: "Diablo",
    ),
  ];

  void addCardToList(CartaDePreguntas card) {
    setState(() {
      cards.add(card);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 1000;

    final cardWidth = isSmallScreen ? null : screenSize.width / 3;

    final cardList = cards.map((card) {
      return GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(card.respuesta),
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
                card.categoria,
                textAlign: TextAlign.center,
              ),
              Text(
                card.pregunta,
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
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: cardList,
            ),
          );

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.1"),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: FirstColumn(cardListWidget: cardListWidget),
        ),
      ),
      floatingActionButton: AddQuestionWidget(
        addCardToList: addCardToList,
        cardList: cards,
      ),
    );
  }
}
