class Car{
  final String model;
  final double distance;
  final double fuleCapacity;
  final double pricePerHour;

  Car(
      {
        required this.model,
        required this.distance,
        required this.fuleCapacity,
        required this.pricePerHour
      }
  );

  factory Car.fromMap(Map<String, dynamic> map){
    return Car(
      model: map['model'],
      distance: map['distance'],
      fuleCapacity: map['fuleCapacity'],
      pricePerHour: map['pricePerHour'],
    );
  }
}