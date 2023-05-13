import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cards {
  String category;
  String question;
  String answer;

  Cards({
    required this.category,
    required this.question,
    required this.answer,
  });
}

final card1 = Cards(
  category: "Sports",
  question: "¿What is one of the newest Olympic sports that exist?",
  answer: "Skateboarding",
);
final card2 = Cards(
  category: "Comics",
  question: "What's the name of a latinamerican DC villain?",
  answer: "Diablo",
);

final card3 = Cards(
  category: "Tech",
  question: "¿What is the best programming langauge to create apps?",
  answer: "Flutter",
);

final card4 = Cards(
  category: "Sports",
  question: "What do you call it when a bowler makes three strikes in a row?",
  answer: "Turkey",
);
final card5 = Cards(
  category: "Comics",
  question: "Who is the fastest DC character?",
  answer: "The Flash",
);
final card6 = Cards(
  category: "Tech",
  question: "One gigabyte is equal to how many megabytes?",
  answer: "1000",
);
final card7 = Cards(
  category: "Sports",
  question: "Which boxer fought against Muhammad Ali and won?",
  answer: "Joe Frazier",
);
final card8 = Cards(
  category: "Comics",
  question: "Who is the tyrannical ruler of the planet Apokolips?",
  answer: "Darkseid",
);
final card9 = Cards(
  category: "Tech",
  question: "What does CPU stand for?",
  answer: "Central Processing Unit",
);
final card10 = Cards(
  category: "Sports",
  question:
      "In motor racing, what color is the flag they wave to indicate the winner?",
  answer: "Checkered flag",
);
final card11 = Cards(
  category: "Comics",
  question: "How did Deathstroke get his powers?",
  answer: "A military experiment",
);
final card12 = Cards(
  category: "Tech",
  question: "What does “HTTP” stand for?",
  answer: "Hypertext Transfer Protocol",
);
final card13 = Cards(
  category: "Sports",
  question: "How many holes are played in an average round of golf?",
  answer: "18",
);
final card14 = Cards(
  category: "Comics",
  question: "Dick Grayson was first known as Robin and later as?",
  answer: "Nightwing",
);
final card15 = Cards(
  category: "Tech",
  question: "What is a Fat Arrow Notation in Dart?",
  answer: "=>",
);

final cards = [
  card1,
  card2,
  card3,
  card4,
  card5,
  card6,
  card7,
  card8,
  card9,
  card10,
  card11,
  card12,
  card13,
  card14,
  card15,
];

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
    final screenSize = MediaQuery.of(context).size;
    final isSmallScreen = screenSize.width < 1000;
    final cardWidth = isSmallScreen ? null : screenSize.width / 3;

    final cardList = cards.map((card) {
      return GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(card.answer),
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
