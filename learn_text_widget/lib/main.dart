import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        body: MyWidget()

      )
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // return const Text(
    //   'Below are a series of poorly constructed paragraphs and '
    //     'possible solutions. Put yourself in the place of a teacher. Criticise'
    //     ' the structure of each paragraph and suggest how it might be improved. '
    //     'Be very critical about how the paragraph is constructed and how well '
    //     'the ideas flow. There are quite a few examples to have a go at because '
    //     'being critical of the work of others is difficult but gets easier the '
    //     'more you practice.',
    //   //Viet tu trai sang phai: ltr
    //   textDirection: TextDirection.ltr,
    //   //Can le: left, right, center, justify,..
    //   textAlign: TextAlign.justify,
    //   //Set toi da bao nhieu dong
    //   maxLines: 3,
    //   //Chi hien thi text o trong khung gioi han
    //   overflow: TextOverflow.ellipsis, //hien thi ... o cuoi
    //   //Chu to hon n lan
    //   //textScaleFactor: 1.5,
    //   //------------------------------------------
    //   //Text style
    //   style: TextStyle(
    //     //Doi mau text
    //     color: Colors.pink, //ma hex: Color.fromARGD()
    //     //Doi mau nen chu
    //     //backgroundColor: Colors.green,
    //     //Thay doi kich thuoc chu
    //     fontSize: 15, //30px
    //     //Do day, dam nhat
    //     fontWeight: FontWeight.w400,
    //     //Style font: in nghieng,...
    //     fontStyle: FontStyle.italic,
    //     //Font chu
    //     fontFamily: 'GTA',
    //     //Khoang cach giua cac tu
    //     //wordSpacing: 20,
    //     //Khoang cach giua cac ky tu trong 1 tu
    //     //letterSpacing: 10,
    //     //Kieu chu: gach chan,...
    //     decoration: TextDecoration.underline,
    //     //----------------------------------------------------------------
    //   ),
    // );
    return Center(
      child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: const <TextSpan>[
              TextSpan(text: 'Hello'),
              TextSpan(text: 'bold', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextSpan(text: ' world !!!')
            ]
          )
      ),
    );
  }
}
