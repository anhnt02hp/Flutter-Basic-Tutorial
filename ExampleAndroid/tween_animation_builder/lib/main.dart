import 'package:flutter/material.dart';
import 'package:tween_animation_builder/shared/screenTitle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ninja Trips',
      home: ScreenTitle(text: '',),
    );
  }
}