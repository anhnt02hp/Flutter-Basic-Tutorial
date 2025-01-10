import 'package:flutter/material.dart';
import 'package:lifting_state_up/ColorChangingAppWithLifting.dart';

void main() => runApp(AppWithLifting());

class AppWithLifting extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorChangingAppWithLifting(),
    );
  }
}
