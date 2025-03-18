import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/AppWithProvider.dart';
import 'package:state_management/CartModel.dart';

void main() => runApp(StateManagementApp());

class StateManagementApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppWithProvider(),
      ),
    );
  }
}