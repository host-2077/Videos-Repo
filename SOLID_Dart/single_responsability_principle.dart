/* A class should do only one thing 
and therefore it should have 
only one reason to change. */

// Example:
class Villano {
  String nombre;
  int poderes;
  int maldad;
  String debilidad;

  Villano(this.debilidad, this.maldad, this.nombre, this.poderes);
}

class VillanoUnificado {
  Villano villano;

  VillanoUnificado(this.villano);
}

class VillanoDescripcion {
  Villano villano;

  VillanoDescripcion(this.villano);

  void descripcionVillano() {
    print(
        'El villano ${villano.nombre} tiene un nivel de maldad de ${villano.maldad} * ${villano.poderes}');
  }
}

class VillanoRanking {
  Villano villano;

  VillanoRanking(this.villano);

  void rankingVillano() {
    print(
        'El villano ${villano.nombre} tiene un nivel de maldad de ${villano.maldad} * ${villano.poderes}');
  }
}
