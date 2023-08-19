// I changed the default console by going to the Dart extension settings >
// dart:cli and changing the setting to "terminal" for the code to work properly.
// I'm using Windows 10 and VS Code.

import "dart:io";

void main() {
  print("Type something and press enter:");
  String? userInput = stdin.readLineSync();
  print("The something that you entered is: $userInput");
}
