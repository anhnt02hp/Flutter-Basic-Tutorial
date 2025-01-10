//Buoc 1: import thu vien
import 'package:flutter/material.dart';

//Buoc 2: Tao ham main
void main(){
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        )
    ),
    debugShowCheckedModeBanner: false,
  ));
}

//Buoc 3: Define 1 widget ca nhan
class MyWidget extends StatelessWidget{
  //Khai bao thuoc tinh
  //....
  //Khoi tao constructor
  //....
  //Khoi tao phuong thuc: Override lai ham buid
  @override
  Widget build(BuildContext context){
    return const Card(
     color: Colors.pink,
      //Margin = khoang cach cua card voi nhung widget xung quanh => parent
    margin: EdgeInsets.all(20), // Cach tat ca cac widget xung quanh 20px
      //Su dung Widget padding de bao quanh phan text do
      //Padding = tao khoang cach cua card voi noi dung cua chinh no => child
      child: Padding(
       padding: EdgeInsets.all(30.0), //Cach deu tren duoi trai phai la 30px
       //padding: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0), //Padding cac vi tri
       //padding: EdgeInsets.only(left: 100.0), //Padding chi 1 huong
       //padding: EdgeInsets.symmetric(horizontal: 100.0), //Padding theo chieu doc hoac ngang. vertical = top + bottom. horizontal = left + right
       child: Text(
         'Tin Coder',
         style: TextStyle(
             fontSize: 20,
             color: Colors.white
         ),
       ),
     ),
    );
  }
}
