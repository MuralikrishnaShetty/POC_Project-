
import 'package:demopoc/screen/navbar.dart';
import 'package:demopoc/screen/order_details_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Cab Booking',
      home:
      // NavBar(),
       OrderDetails(),
      

    );
  }

}