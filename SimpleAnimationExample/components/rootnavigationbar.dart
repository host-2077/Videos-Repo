import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/theme_service.dart';
import 'package:provider/provider.dart';
import '../presentation/all_questions_screen/all_questions_screen.dart';
import '../presentation/add_question_screen/add_question_screen.dart';

class RootNavigationBar extends StatefulWidget {
  const RootNavigationBar({Key? key}) : super(key: key);

  @override
  State<RootNavigationBar> createState() => _RootNavigationBarState();
}

class _RootNavigationBarState extends State<RootNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AllQuestionsScreen(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.add_reaction_outlined),
              onPressed: () {
                Provider.of<ThemeService>(context, listen: false).toggleTheme();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddQuestionScreen(),
            ),
          );
        },
        child: const Icon(Icons.add_to_photos_outlined),
      ),
    );
  }
}
