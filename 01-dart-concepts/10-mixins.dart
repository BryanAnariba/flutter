abstract class Animal {
  
}

abstract class Mamifero extends Animal {
  
}

abstract class Ave extends Animal {
  
}

abstract class Pez extends Animal {
  
}

// Mixins => with
mixin Volador {
  void volar () => print('Estoy Volando!');
}

mixin Caminante {
  void caminar () => print('Estoy Caminando!');
}

mixin Nadador {
  void nadar() => print('Estoy Nadando!');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Volador, Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main () {
  print('Que hace el delfin');
  final Delfin flipper = Delfin(); 
  flipper.nadar();
  
  print('Que hace el pato');
  final Pato patoLucas = Pato();
  patoLucas.caminar();
  patoLucas.nadar();
  patoLucas.volar();
  
  print('Que hace el murcielago');
  final Murcielago batman = Murcielago();
  batman.caminar();
  batman.volar();
}