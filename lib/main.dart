import 'package:demopoc/screen/first_screen.dart';
import 'package:demopoc/screen/navbar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      title: 'Cab Booking',
      home: NavBar(),
      

    );
  }

}