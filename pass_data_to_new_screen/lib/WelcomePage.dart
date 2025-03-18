import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  //Khoi tao thuoc tinh
  final String name, email, phone;

  //khoi tao constructor
  WelcomePage({super.key, required this.name, required this.email, required this.phone});

  //Khoi tao method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${name}'),
            Text('Email: ${email}'),
            Text('Phone: ${phone}'),
          ],
        ),
      ),
    );
  }
}