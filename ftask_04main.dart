import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cards {
  String category;
  String question;

  Cards({required this.category, required this.question});
}

final card1 = Cards(
  category: "Sports",
  question: "¿What is one of the newest Olympic sports that exist?",
);
final card2 = Cards(
  category: "Comics",
  question: "¿Who is a latinamerican DC villain?",
);

final card3 = Cards(
  category: "Tech",
  question: "¿What is the best programming langauge to create apps?",
);

final card4 = Cards(
  category: "Sports",
  question: "What do you call it when a bowler makes three strikes in a row?",
);
final card5 = Cards(
  category: "Comics",
  question: "Who is the fastest DC character?",
);
final card6 = Cards(
  category: "Tech",
  question: "One gigabyte is equal to how many megabytes?",
);
final card7 = Cards(
  category: "Sports",
  question: "Which boxer fought against Muhammad Ali and won?",
);
final card8 = Cards(
  category: "Comics",
  question: "Who is the tyrannical ruler of the planet Apokolips?",
);
final card9 = Cards(
  category: "Tech",
  question: "What does CPU stand for?",
);
final card10 = Cards(
  category: "Sports",
  question:
      "In motor racing, what color is the flag they wave to indicate the winner?",
);
final card11 = Cards(
  category: "Comics",
  question: "How did Deathstroke get his powers?",
);
final card12 = Cards(
  category: "Tech",
  question: "What does “HTTP” stand for?",
);
final card13 = Cards(
  category: "Sports",
  question: "How many holes are played in an average round of golf?",
);
final card14 = Cards(
  category: "Comics",
  question: "Dick Grayson was first known as Robin and later as...?",
);
final card15 = Cards(
  category: "Tech",
  question: "What is a Fat Arrow Notation in Dart?",
);

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
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Skateboarding"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card1.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card1.question,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Diablo"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card2.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card2.question,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Flutter"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card3.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card3.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Turkey"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card4.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card4.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("The Flash"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card5.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card5.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("1000"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card6.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card6.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Joe Frazier"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card7.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card7.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Darkseid"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card8.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card8.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Central Processing Unit"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card9.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card9.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Checkered flag"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card10.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card10.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("A military experiment"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card11.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card11.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Hypertext Transfer Protocol"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card12.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card12.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("18"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card13.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card13.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Nightwing"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card14.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card14.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("=>"),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Text(
                        card15.category,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        card15.question,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.amberAccent,
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: const Center(
                  child: Text("MediaQuery Example"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
