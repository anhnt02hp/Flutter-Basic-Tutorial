//Buoc 1: Import thu vien
import 'package:flutter/material.dart';

//Buoc 2: Ham main => chay ham runApp()
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        )
    ),
  ));
}

//Buoc 3: Khoi tao 1 widget ca nhan => Override lai ham build cua widget StatelessWidget
class MyWidget extends StatelessWidget{
  //Khoi tao thuoc tinh
  //Khoi tao constructor
  //Khoi tao phuong thuc
  @override
  Widget build(BuildContext build){
    //Container = khung chua.
    // Neu container khong co child: thi kich thuoc container la toan bo man hinh
    // Neu container co child: thi kich thuoc bao quanh thuoc tinh "child"
    return Container(
      //color
      //color: Colors.green,
      //fix Container size
      width: 200,
      height: 200,
      //aligment: Aligment, AligmentDirectional, FractionalOffset(can cac thanh phan ben trong Container)

      //aligment: align the "child" within container
      ////can giua, can trai phai,...theo toa do
      alignment: Alignment.center, //center, bottomLeft,...
      //alignment: Alignment(1.0, 1.0), //bottom/right
      ////can lo lung ở giữa
      //alignment: const FractionalOffset(0.75, 0.75),
      
      //padding
      padding: const EdgeInsets.all(15),
      //margin
      margin: const EdgeInsets.all(20),

      //decoration
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.rectangle,
        //shape
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        //border
        border: Border.all(width: 2, color: Colors.red),
      ),
      
      //transform
      transform: Matrix4.rotationZ(0.2),
      
      //child
      child: const Text('Tincoder', style: TextStyle(fontSize: 30, color: Colors.white)),
    );
  }
}