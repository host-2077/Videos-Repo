import 'package:flutter/material.dart';

class CircleImageStack extends StatelessWidget {
  const CircleImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://storage.googleapis.com/cms-storage-bucket/acb0587990b4e7890b95.png"),
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Text("Welcome!"),
        ),
      ],
    );
  }
}
