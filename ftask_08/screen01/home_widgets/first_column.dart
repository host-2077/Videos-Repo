
import 'package:flutter/material.dart';
import '../../components/circle_image_stack.dart';

class FirstColumn extends StatelessWidget {
  const FirstColumn({
    super.key,
    required this.cardListWidget,
  });

  final Widget cardListWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        const CircleImageStack(),
        const SizedBox(
          height: 45,
        ),
        cardListWidget,
      ],
    );
  }
}
