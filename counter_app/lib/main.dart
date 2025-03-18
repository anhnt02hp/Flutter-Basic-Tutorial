import 'package:flutter/material.dart';
import 'package:counter_app/CounterScreen.dart';

void main() => runApp(CounterAppExample());

class CounterAppExample extends StatelessWidget{
  //Khoi tao thuoc tinh
  const CounterAppExample({super.key});

  //Khoi tao method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}