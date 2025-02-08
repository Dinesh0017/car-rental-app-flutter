import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class  CarListScreen extends StatelessWidget {

  final List<Car> cars =[
    Car(model: 'Fortuner', distance: 870, fuleCapacity: 50, pricePerHour: 120),
    Car(model: 'Lambogini', distance: 50, fuleCapacity: 5, pricePerHour: 2458),
    Car(model: 'BMW', distance: 896, fuleCapacity: 20, pricePerHour: 400),
    Car(model: 'Bens', distance: 100, fuleCapacity: 65, pricePerHour: 200),
    Car(model: 'Honda', distance: 10, fuleCapacity: 80, pricePerHour: 450),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car',
                    style:TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ) ,) ,
        foregroundColor: Colors.black,
        backgroundColor: Color(0xffF3F3F3),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context,index){
          return CarCard(car: cars[index]);
        },
        ),
    );
  }
}
