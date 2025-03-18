import 'package:flutter/material.dart';

class GetCounter extends StatelessWidget{
  //Khoi tao thuoc tinh
  final int counter;

  //Khoi tao constructor
  const GetCounter({super.key, required this.counter});

  //KHoi tao method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Get Counter',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('Counter Get: ${counter}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}