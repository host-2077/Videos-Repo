import 'package:flutter/material.dart';
import '../home_screen01/home_widget.dart';
import '../add_question_screen03/add_question_screen.dart';

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
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          selectedItemColor: Colors.teal,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.question_mark),
              label: "Question list",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Create a question",
            ),
          ],
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
      );
    }
  }
}
