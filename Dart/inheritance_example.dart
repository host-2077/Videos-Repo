void main() {
  Animal perro = Animal();
  perro.setNombreanimal = "Pedro";

  Habilidad habilidad1 = Habilidad();
  habilidad1.setNombrehabilidad = "corro muy rápido";

  perro.tituloAnimal();
  habilidad1.tituloHabilidad();
  perro.debilidad();
  perro.razaDeperro();
}

class Animal with Debilidad, Raza {
  late String _nombreAnimal;

  String get getNombreanimal => this._nombreAnimal;

  set setNombreanimal(String nombreAnimal) {
    if (nombreAnimal.length > 3) {
      this._nombreAnimal = nombreAnimal;
    } else {
      print("El nombre del animal debe tener más de 3 carácteres");
    }
  }

  void tituloAnimal() {
    print("Soy $_nombreAnimal");
  }
}

class Raza {
  late String _raza;

  String get getRaza => this._raza;

  set setRaza(String raza) {
    if (raza.length > 3) {
      this._raza = raza;
    } else {
      print("El nombre del animal debe tener más de 3 carácteres");
    }
  }

  void razaDeperro() {
    print("Los humanos me conocen como $_raza");
  }
}

class Habilidad {
  late String _nombreHabilidad;

  String get getnombreHabilidad => this._nombreHabilidad;

  set setNombrehabilidad(String nombreHabilidad) {
    if (nombreHabilidad.length > 3) {
      this._nombreHabilidad = nombreHabilidad;
    } else {
      print("La habilidad tiene que tener más de 3 carácteres");
    }
  }

  void tituloHabilidad() {
    print("y yo $_nombreHabilidad");
  }
}

class Cuadrupedos {
  late String _tipoDepatas;

  String get getTipodepatas => this._tipoDepatas;

  set getTipodepatas(String tipoDepatas) {
    if (tipoDepatas.length > 3) {
      this._tipoDepatas = tipoDepatas;
    } else {
      print("El tipo de patas tiene que tener más de 3 carácteres");
    }
  }

  void patas() {
    print("además soy cuadripedo");
  }
}

mixin Debilidad {
  void debilidad() {
    print("Mi debilidad son los cacahuates");
  }
}
