import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget{
  final String text;

  const ScreenTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 500),
      builder: (BuildContext context, double _val, child){
        return Opacity(
          opacity: _val,
          child: Padding(
            padding: EdgeInsets.only(top: _val * 20),
            child: child,
          ),
        );
      },
    );
  }
}