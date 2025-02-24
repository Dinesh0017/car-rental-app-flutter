import 'package:car_rental/data/models/car.dart';
import 'package:car_rental/presentation/bloc/car_bloc.dart';
import 'package:car_rental/presentation/bloc/car_state.dart';
import 'package:car_rental/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class  CarListScreen extends StatelessWidget {

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
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state){
          if(state is CarsLoading){
            return Center(child: CircularProgressIndicator(),);
          }
          else if (state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          }
          else if(state is CarsError) {
            return Center(child: Text('error : ${state.message}'),);
          }
          return Container();
          },
      ),
 );

  }
}
