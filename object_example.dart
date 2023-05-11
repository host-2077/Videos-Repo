void main() {
  Humano nombre1 = Humano();
  nombre1.nombre = "Frank";

  Humano nombre2 = Humano();
  nombre2.nombre = "Alicia";

  nombre1.trotar();
  nombre2.trotar();

  nombre2.musica();
}

class Humano {
  late String nombre;

  void trotar() {
    print("$nombre está trotando");
  }

  void musica() {
    print("$nombre está escuchando música.");
  }
}
