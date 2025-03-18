import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/data/user_pass_mock_data.dart';
import 'package:flutter/painting.dart';
import 'package:e_commerce_app/Screen/ECommerceScreen.dart';


class AccountScreen extends StatelessWidget{
  final String username;
  AccountScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'Account',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, ${username}',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).popUntil(
                    ModalRoute.withName('/')
                  );
                },
                child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}