//Buoc 1: Import thu vien
import 'package:flutter/material.dart';

//Buoc 2: Ham main
void main(){
  return runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          body: MyWidget(),
        )
      ),
  debugShowCheckedModeBanner: false,
  ));
}

//------------------------------------------------------------
//Buoc 3: Tao 1 widget theo y muon
class MyWidget extends StatelessWidget{
  //Khoi tao thuoc tinh
  //...
  //Khoi tao constructor
  //...
  //Khoi tao phuong thuc = override lai ham build
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin = khoang cach giua btn voi witget khac => can cho btn vao 1 cai gi do chua no(Container,...)
      margin: const EdgeInsets.all(20),
      //Them icon vao btn------------------------------------------
      child: TextButton.icon(
          icon: const Icon(Icons.add, size: 30),

          //click on btn--------------------------------------------
          onPressed: (){
            print('Click text button');
          },

          //style of btn: color, size, shadow, padding, bo tron, border
          style: TextButton.styleFrom(
            //color of btn--------------------------------------------
            foregroundColor: Colors.pink, //mau cua text cua btn
            backgroundColor: Colors.green, //mau cua background cua btn
            //size of btn---------------------------------------------
            //minimumSize: const Size(200, 80)
            //padding = khoang cach cua text voi vien cua btn
            padding: const EdgeInsets.all(10),
            //shape of btn--------------------------------------------
            //bo tron btn
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            //Do bong shadow--------------------------------------------
            elevation: 20, //Độ rộng của shadow
            shadowColor: Colors.blue.withOpacity(0.5), //độ mờ của bóng
            //Border-----------------------------------------------------
            side: const BorderSide(width: 2, color: Colors.deepOrange),

            //disable--------------------------------------------------
            //Chuyen onpressed ve null va code nhu ben duoi:
            // disabledBackgroundColor: Colors.grey,
            // disabledForegroundColor: Colors.white

          ),
          
          //text of btn----------------------------------------------------
          label: const Text('Text Button', style: TextStyle(fontSize: 28))
      ),
    );
  }
}