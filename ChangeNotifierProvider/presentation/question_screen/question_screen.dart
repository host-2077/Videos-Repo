import 'package:flutter/material.dart';

import '../../components/rootnavigationbar.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({
    Key? key,
    required this.title,
    required this.hint1,
    required this.hint2,
    required this.question,
    required this.solution,
  }) : super(key: key);

  final String title;
  final String hint1;
  final String hint2;
  final String question;
  final String solution;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              color: Colors.amberAccent,
              child: const Text(
                'Question:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              question,
              style: const TextStyle(fontSize: 16),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              color: Colors.amberAccent,
              child: const Text(
                'Hints:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(hint1),
                            ),
                          ),
                      icon: const Icon(
                          color: Colors.orangeAccent, Icons.lightbulb)),
                  const Spacer(),
                  IconButton(
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(hint2),
                            ),
                          ),
                      icon: const Icon(
                          color: Colors.orangeAccent, Icons.lightbulb)),
                  const Spacer(),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(solution),
                  ),
                );
              },
              child: const Text("Show me the answer"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RootNavigationBar(),
                  ),
                );
              },
              child: const Text("More questions please!"),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
