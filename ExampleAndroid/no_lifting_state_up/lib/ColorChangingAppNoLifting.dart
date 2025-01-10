import 'package:flutter/material.dart';
import 'package:no_lifting_state_up/ColorBox.dart';

class ColorChangingAppNoLifting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'No Lifting State Up',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ColorBox(),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ColorBox(),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ColorBox(),
          ),
        ],
      ),
    );
  }
}