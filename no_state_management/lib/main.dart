import 'package:flutter/material.dart';
import 'package:no_state_management/AppWithNoProvider.dart';

void main() => runApp(NoStateManagamentApp());

class NoStateManagamentApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppWithNoProvider(),
      ),
    );
  }
}