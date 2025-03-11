import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('arielrodriguez0706'),
        backgroundColor: Color(0xffe1a5ec), // Color morado para la AppBar
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: 7,
        itemBuilder: (context, index) {
          IconData icon;
          String text;
          switch (index) {
            case 0:
              icon = Icons.directions_car;
              text = 'This is a Car, because its a car. So, it\'s a car.';
              break;
            case 1:
              icon = Icons.directions_bike;
              text =
                  'This is a Bicycle, because its a Bicycle. So, it\'s a Bicycle.';
              break;
            case 2:
              icon = Icons.directions_boat;
              text = 'This is a Boat, because its a Boat. So, it\'s a Boat.';
              break;
            case 3:
              icon = Icons.directions_bus;
              text = 'This is a Bus, because its a Bus. So, it\'s a Bus.';
              break;
            case 4:
              icon = Icons.train;
              text = 'This is a Train, because its a Train. So, it\'s a Train.';
              break;
            case 5:
              icon = Icons.directions_walk;
              text = 'This is a Walk, because its a Walk. So, it\'s a Walk.';
              break;
            case 6:
            default:
              icon = Icons.directions_car;
              text = 'This is a Car, because its a car. So, it\'s a car.';
              break;
          }

          return ListTile(
            leading: Icon(icon, size: 40),
            title: Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
