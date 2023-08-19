/* Classes should be open for extension, 
but closed for modification. */

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

class NuevoFormato extends VillanoUnificado {
  NuevoFormato(Villano villano) : super(villano);

  void descripcionVillanoNuevoFormato() {
    print(
        'Hola!. Este es el villano ${villano.nombre} tiene un nivel de maldad de ${villano.maldad} * ${villano.poderes}');
  }
}
