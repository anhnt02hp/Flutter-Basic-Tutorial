import 'package:e_commerce_app/Login/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ECommerceExampleApp());

class ECommerceExampleApp extends StatelessWidget {
  const ECommerceExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}