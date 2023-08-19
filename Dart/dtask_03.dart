import "dart:io";
import "dart:math";

void main() {
  int randomNumber = Random().nextInt(10);
  int attempts = 0;

  while (true) {
    print("Guess the number");
    final int userInput = int.parse(stdin.readLineSync() ?? "");

    attempts++;
    if (userInput == randomNumber) {
      print("Correct! You took $attempts attempts.");
      break;
    } else {
      print("Incorrect. This is attempt $attempts.");
    }
  }
}
