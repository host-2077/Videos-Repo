import "dart:io";
import 'dart:math';

void main() {
  Random random = new Random();
  final int randomNumber = random.nextInt(10) + 1;
  int attempts = 0;

  while (true) {
    print("Guess the number");
    final int userInput = int.parse(stdin.readLineSync() ?? "");

    attempts++;
    if (userInput == randomNumber) {
      print("Correct! You took $attempts attempts.");
      break;
    } else if (userInput < randomNumber) {
      print(
          "Incorrect. This is attempt $attempts. The entered number is too low.");
    } else if (userInput > randomNumber) {
      print(
          "Incorrect. This is attempt $attempts. The entered number is too high.");
    }
  }
}
