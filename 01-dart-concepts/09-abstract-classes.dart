enum PlantType { NUCLEAR, WIND, WATER }

double chargeMyPhone (EnergyPlant energyPlant) {
  if (energyPlant.currentEnergy < 10) {
    throw Exception('The current energy of this plant is ${energyPlant.currentEnergy} and the phone needs minimun 10 to charge');
  }
  return energyPlant.currentEnergy - 10;
}

void main () {
  final NuclearPlant nuclearPlant = NuclearPlant(currentEnergy: 10);
  // Veamos si podemos cargar un cel, descomentar esta linea para ver el throw
  //nuclearPlant.consumeEnergy(2);
  print('I charged my phone!, the current energy is: ${chargeMyPhone(nuclearPlant)}');
  
  final WaterPlant waterPlant = WaterPlant(currentEnergy: 100);
  print('Water Plant: ${waterPlant}');
}

// You can't initialized this class because is abstract
abstract class EnergyPlant {
  double currentEnergy;
  final PlantType plantType;
  
  void consumeEnergy (double amount);
  
  EnergyPlant({ 
    required this.currentEnergy, 
    required this.plantType 
  });
}


// Como extiende de Energy plant debe tener todos los metodos y atributos de la clase abstracta osea es como un machote
class NuclearPlant extends EnergyPlant {
  NuclearPlant({ required double currentEnergy })
    : super(currentEnergy: currentEnergy, plantType: PlantType.NUCLEAR);
  
  @override
  void consumeEnergy (double amount) {
    currentEnergy = currentEnergy - amount;
    print('Consumed energy is: $amount - Current Energy is: $currentEnergy');
  }
}

// Implementar
class WaterPlant implements EnergyPlant {
  
  @override
  double currentEnergy;
  
  @override
  final PlantType plantType = PlantType.WATER;
  
  WaterPlant({ required this.currentEnergy });
  
  @override
  void consumeEnergy(double amount) {
    currentEnergy = currentEnergy - amount;
    print('Consumed energy is: $amount - Current Energy is: $currentEnergy');
  }
}