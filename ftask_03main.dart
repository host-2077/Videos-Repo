import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Cards {
  String category;
  String question;

  Cards({required this.category, required this.question});
}

final carta1 = Cards(
  category: "Sports",
  question: "¿What is one of the newest Olympic sports that exist?",
);
final carta2 = Cards(
  category: "Comics",
  question: "¿Who is a latinamerican DC villain?",
);

final carta3 = Cards(
  category: "Tech",
  question: "¿What is the best programming langauge to create apps?",
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
        title: const Text("Trivia Maker 1.0"),
      ),
      body: Center(
        child: Column(
          children: [
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
                      carta1.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta1.question,
                      textAlign: TextAlign.center,
                    ),
                    Stack(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            "images/001.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Positioned(
                          top: 80,
                          child: Text("Stack Label 1"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
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
                      carta2.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta2.question,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        "images/002.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
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
                      carta3.category,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      carta3.question,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
