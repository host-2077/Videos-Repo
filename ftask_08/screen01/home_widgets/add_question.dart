import 'package:flutter/material.dart';
import 'questions_card.dart';

class AddQuestionWidget extends StatefulWidget {
  final List<CartaDePreguntas> cardList;
  final Function addCardToList;

  const AddQuestionWidget({
    Key? key,
    required this.cardList,
    required this.addCardToList,
  }) : super(key: key);

  @override
  _AddQuestionWidgetState createState() => _AddQuestionWidgetState();
}

class _AddQuestionWidgetState extends State<AddQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final newCard = CartaDePreguntas(
          title: "new title",
          hint1: "New Hint1",
          hint2: "New Hint2",
          question: "New Question",
          solution: "New Solution",
        );
        widget.addCardToList(newCard);
      },
      child: const Icon(Icons.add),
    );
  }
}
