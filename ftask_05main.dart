import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final carta1 = CartaDePreguntas(
      categoria: "Sports",
      pregunta: "What is one of the newest Olympic sports that exist?",
      respuesta: "Skateboarding",
    );
    final carta2 = CartaDePreguntas(
      categoria: "Comics",
      pregunta: "What's the name of a latinamerican DC villain?",
      respuesta: "Diablo",
    );
    final carta3 = CartaDePreguntas(
      categoria: "Tech",
      pregunta: "What is the best programming langauge to create apps?",
      respuesta: "Flutter",
    );
    final carta4 = CartaDePreguntas(
      categoria: "Sports",
      pregunta:
          "What do you call it when a bowler makes three strikes in a row?",
      respuesta: "Turkey",
    );
    final carta5 = CartaDePreguntas(
      categoria: "Comics",
      pregunta: "Who is the fastest DC character?",
      respuesta: "The Flash",
    );
    final carta6 = CartaDePreguntas(
      categoria: "Tech",
      pregunta: "One gigabyte is equal to how many megabytes?",
      respuesta: "1000",
    );
    final carta7 = CartaDePreguntas(
      categoria: "Sports",
      pregunta: "Which boxer fought against Muhammad Ali and won?",
      respuesta: "Joe Frazier",
    );
    final carta8 = CartaDePreguntas(
      categoria: "Comics",
      pregunta: "Who is the tyrannical ruler of the planet Apokolips?",
      respuesta: "Darkseid",
    );
    final carta9 = CartaDePreguntas(
      categoria: "Tech",
      pregunta: "What does CPU stand for?",
      respuesta: "Central Processing Unit",
    );
    final carta10 = CartaDePreguntas(
      categoria: "Sports",
      pregunta:
          "In motor racing, what color is the flag they wave to indicate the winner?",
      respuesta: "Checkered flag",
    );
    final carta11 = CartaDePreguntas(
      categoria: "Comics",
      pregunta: "How did Deathstroke get his powers?",
      respuesta: "A military experiment",
    );
    final carta12 = CartaDePreguntas(
      categoria: "Tech",
      pregunta: "What does “HTTP” stand for?",
      respuesta: "Hypertext Transfer Protocol",
    );
    final carta13 = CartaDePreguntas(
      categoria: "Sports",
      pregunta: "How many holes are played in an average round of golf?",
      respuesta: "18",
    );
    final carta14 = CartaDePreguntas(
      categoria: "Comics",
      pregunta: "Dick Grayson was first known as Robin and later as...?",
      respuesta: "Nightwing",
    );
    final carta15 = CartaDePreguntas(
      categoria: "Tech",
      pregunta: "What is a Fat Arrow Notation in Dart?",
      respuesta: "=>",
    );

    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 1000;

    final cards = [
      carta1,
      carta2,
      carta3,
      carta4,
      carta5,
      carta6,
      carta7,
      carta8,
      carta9,
      carta10,
      carta11,
      carta12,
      carta13,
      carta14,
      carta15,
    ];

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
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Stack(
                children: const [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png"),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 20,
                    child: Text("Welcome!"),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              cardListWidget,
            ],
          ),
        ),
      ),
    );
  }
}

class CartaDePreguntas {
  String categoria;
  String pregunta;
  String respuesta;

  CartaDePreguntas({
    required this.categoria,
    required this.pregunta,
    required this.respuesta,
  });
}
