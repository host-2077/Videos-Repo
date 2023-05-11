import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
      ),
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: FloatingActionButton(
              child: const Icon(Icons.book),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("This is my first SnackBar"),
                  ),
                );
              },
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text("Task Flutter 1"),
        ),
      ),
    );
  }
}
