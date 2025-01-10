import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget{
  const ColorBox({super.key});

  @override
  State<StatefulWidget> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox>{
  //Khoi tao thuoc tinh
  Color _color = Colors.red;

  //Khoi tao method
  void _changedColor(){
    setState(() {
      _color = Colors.primaries[DateTime.now().millisecondsSinceEpoch % Colors.primaries.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changedColor,
      child: Container(
        height: 100,
        color: _color,
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }

}