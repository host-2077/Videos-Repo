import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/theme_service.dart';
import 'package:provider/provider.dart';
import 'question_form.dart';

class AddQuestionScreen extends StatelessWidget {
  const AddQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text("Trivia App 1.4"),
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: const Center(
                child: Text(
                  'Create your own question:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const QuestionForm(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              },
              icon: const Icon(Icons.add_reaction_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
