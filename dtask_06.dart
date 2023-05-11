/* Hangman - Spanish Ver. 1.0

Note: The code is in Spanish. 

• Have a list of ten words
• Choose a random word
• Ask the user to enter a letter
• Each user has 10 lives
• When the entered letter matches one or more letters of the searched
word, print it out, otherwise remove one live
• All letters that are not guessed are replaced with a whitespaces,
underscore or something else
• If the user has no lives left, the game is over */

import "dart:io";
import "dart:math";

void main() {
  final List<String> palabras = [
    "manzana",
    "banana",
    "naranja",
    "granadilla",
    "melon",
    "sandia",
    "durazno",
    "pera",
    "mango",
    "fresa",
  ];

  final Random seleccionAleatoria = Random();
  final String palabraSeleccionada =
      palabras[seleccionAleatoria.nextInt(palabras.length)];
  final List<String> letrasAdivinadas =
      List.filled(palabraSeleccionada.length, '_');
  int vidas = 10;

  while (vidas > 0) {
    print("Vidas: $vidas");
    print("Letras adivinadas: ${letrasAdivinadas.join(" ")}");

    stdout.write("Ingresa una letra: ");
    final String entrada = stdin.readLineSync()!.trim().toLowerCase();

    bool seEncontroLaLetra = false;
    for (int intento = 0; intento < palabraSeleccionada.length; intento++) {
      if (palabraSeleccionada[intento] == entrada) {
        letrasAdivinadas[intento] = entrada;
        seEncontroLaLetra = true;
      }
    }

    if (!seEncontroLaLetra) {
      vidas--;
    }

    if (letrasAdivinadas.join() == palabraSeleccionada) {
      print('¡Has ganado! La palabra es "$palabraSeleccionada".');
      break;
    }
  }

  if (vidas == 0) {
    print(
        'Lo siento. Has sido ahorcado. La palabra era $palabraSeleccionada".');
  }
}
