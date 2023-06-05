import 'package:flutter/material.dart';
import 'package:flutter_application_2077/components/theme_service.dart';
import 'package:provider/provider.dart';

import '../../components/rootnavigationbar.dart';

class QuestionScreen extends StatefulWidget {
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
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>
    with SingleTickerProviderStateMixin {
  final SizedBox sizedBoxSpacer = const SizedBox(height: 16);
  late AnimationController _controller;
  late Animation<double> _animation;
  late IconData _icon;
  bool _hint1Pressed = false;
  bool _hint2Pressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _icon = Icons.lightbulb;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showAnswer() {
    setState(() {
      _icon = Icons.check_circle_outline;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(widget.solution),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          sizedBoxSpacer,
          Stack(
            children: [
              AnimatedBuilder(
                animation: _animation,
                builder: (BuildContext context, Widget? child) {
                  return Container(
                    padding: const EdgeInsets.all(90.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.limeAccent.withOpacity(_animation.value),
                    ),
                  );
                },
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(45.0),
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Icon(
                    _icon,
                    color: Colors.deepPurpleAccent,
                    size: 50.0,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              widget.question,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _hint1Pressed = true;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(widget.hint1),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.live_help,
                    color: _hint1Pressed
                        ? Colors.limeAccent
                        : Colors.deepPurpleAccent,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _hint2Pressed = true;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(widget.hint2),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.live_help,
                    color: _hint2Pressed
                        ? Colors.limeAccent
                        : Colors.deepPurpleAccent,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {
              _showAnswer();
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
          sizedBoxSpacer,
        ],
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
