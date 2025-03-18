import 'package:flutter/material.dart';
import 'package:no_lifting_state_up/ColorChangingAppNoLifting.dart';
void main() => runApp(AppNoLifting());

class AppNoLifting extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangingAppNoLifting(),
    );
  }
}