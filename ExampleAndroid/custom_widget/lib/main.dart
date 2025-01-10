import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Widget'),
          centerTitle: true,
        ),
        body: Center(child: AnimatedSquare(),),
      ),
    );
  }
}

class AnimatedSquare extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AnimatedSquareState();
}

class _AnimatedSquareState extends State<AnimatedSquare>{
  //khoi tao thuoc tinh
  double _size = 100;
  //khoi tao method
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _size = _size == 100 ? 200 : 100; //if size = 100 => size = 200 and if size != 100 => size = 100
        });
      },
      child: AnimatedContainer(
        width: _size,
        height: _size,
        color: Colors.green,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut, //smooth when change size
      ),
    );
  }
}