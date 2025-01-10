//Buoc 1: Import thu vien
import 'package:flutter/material.dart';

//Buoc 2: Ham main
void main(){
  runApp(MaterialApp(
    //Xoa cai banner debug
    debugShowCheckedModeBanner: false,
    //Content App
    home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        )
    ),
  ));
}

//Buoc 3: Tao 1 witget ca nhan => Override lai ham build
class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      //margin
      margin: const EdgeInsets.all(10),
      //BUTTON
      child: ElevatedButton.icon(
        //add icon
        icon: const Icon(Icons.edit, size: 30),

        //click
        onPressed: null,//(){
        //     print('Click the Elevated Button');
        //   },
        //Style: color, size,
          style: ElevatedButton.styleFrom(
            //color---------------------------------------------------
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            //size
            //minimumSize: const Size(240, 80),
            //padding
            padding: const EdgeInsets.all(20),
            //shape
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            //shadow
            elevation: 10,
            shadowColor: Colors.black.withOpacity(0.5),
            //border
            side: const BorderSide(width: 2, color: Colors.yellow),
            //disable = set onpressed = null
            disabledForegroundColor: Colors.white,
            disabledBackgroundColor: Colors.grey.withOpacity(0.8),
          ),



          //text-----------------------------------------------------
          label: const Text(
            'Elevated Button',
            style: TextStyle(fontSize: 28),
          ),
      ),
    );
  }
}