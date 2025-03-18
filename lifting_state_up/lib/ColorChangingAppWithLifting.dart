import 'package:flutter/material.dart';
import 'package:lifting_state_up/ColorBox.dart';

class ColorChangingAppWithLifting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ColorChangingAppWithLiftingState();
}

class _ColorChangingAppWithLiftingState extends State<ColorChangingAppWithLifting>{
  //Khai bao thuoc tinh
  Color _color = Colors.red;
  double _size = 100;
  //Khai bao method
  void _changeColor(){
    setState(() {
      _color = Colors.primaries[DateTime.now().millisecondsSinceEpoch % Colors.primaries.length];
    });
  }

  void _getBiggerSize(){
    setState(() {
      _size = _size == 100 ? 200 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Animation Hands-On Activity',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ColorBox(color: _color, onChangeColor: _changeColor, onChangeSize: _getBiggerSize, size: _size,),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ColorBox(color: _color, onChangeColor: _changeColor, onChangeSize: _getBiggerSize, size: _size,),
          ),
        ],
      ),
    );
  }
}