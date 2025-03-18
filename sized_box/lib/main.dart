//Buoc 1: Khai bao thu vien
import 'package:flutter/material.dart';

//Buoc 2: Ham main
void main(){
  runApp(Material(
    home: SafeArea(
      child: Scaffold(
        body: MyWidget(),
      ),
    ),

  ));
}

//Buoc 3: Class
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    
  }
}