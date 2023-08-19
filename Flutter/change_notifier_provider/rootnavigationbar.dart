import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/theme_service.dart';
import 'package:flutter_application_2077/presentation/change_theme_screen/change_theme_screen.dart';
import 'package:provider/provider.dart';
import '../presentation/all_questions_screen/all_questions_screen.dart';
import '../presentation/add_question_screen/add_question_screen.dart';

class RootNavigationBar extends StatefulWidget {
  const RootNavigationBar({Key? key}) : super(key: key);

  @override
  State<RootNavigationBar> createState() => _RootNavigationBarState();
}

class _RootNavigationBarState extends State<RootNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // Bar for small screens.
      return Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeWidget(),
            AddQuestionScreen(),
            ChangeThemeScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark),
              label: "Question list",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Create a question",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_reaction_sharp), label: "Surprise me!"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.add),
        ),
      );
    } else {
      // Bar for large screens.
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: _currentIndex,
              onDestinationSelected: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.question_mark),
                  label: Text("Question list"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.add),
                  label: Text("Create a question"),
                ),
              ],
            ),
            Expanded(
              child: IndexedStack(
                index: _currentIndex,
                children: const [
                  HomeWidget(),
                  AddQuestionScreen(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.add),
        ),
      );
    }
  }
}
