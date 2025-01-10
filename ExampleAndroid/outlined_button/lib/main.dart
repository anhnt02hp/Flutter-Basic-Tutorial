//Buoc 1: Import thu vien
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Buoc 2: ham main
void main(){
  runApp(MaterialApp(

    //Xoa banner debug
    debugShowCheckedModeBanner: false,
    home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        ),
    ),
  ));
}

//Buoc 3: Khoi tao 1 widget ca nhan => Override lai ham build(StatelessWidget)
class MyWidget extends StatelessWidget{
  //Khai bao thuoc tinh
  //.....
  //Khoi tao 1 constructor
  //.....
  //Khoi tao phuong thuc
  @override
  Widget build(BuildContext context){

    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.red,
    //     systemNavigationBarColor: Colors.transparent,
    //     //systemNavigationBarDividerColor: Colors.transparent,
    //   )
    // );

    return Container(
      //margin
      margin: const EdgeInsets.all(20),
      //Button
      child: OutlinedButton.icon(
          //icon: change "child" -> "label"
          icon: const Icon(Icons.edit, color: Colors.white,),
          //click
          onPressed: (){
            print('Oulined Button clicked!');
          },


          //style
          style: OutlinedButton.styleFrom(
            //color
            backgroundColor: Colors.black,
            foregroundColor: Colors.orange,
            //size
            //minimumSize: const Size(240, 80),
            //padding
            padding: const EdgeInsets.all(30),
            //shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            //shadow
            elevation: 20,
            shadowColor: Colors.green.withOpacity(0.5),
            //border
            side: const BorderSide(width: 3, color: Colors.orange),
            
            //disable
            // disabledForegroundColor: Colors.white.withOpacity(0.8),
            // disabledBackgroundColor: Colors.grey,

          ),










          //text
          label: const Text('Outlined Button', style: TextStyle(fontSize: 28),)
      ),
    );
  }
}