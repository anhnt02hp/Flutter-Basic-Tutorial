import 'package:flutter/material.dart';

class ColorBox extends StatefulWidget {
  final Color color; // Màu sắc được truyền từ widget cha
  final VoidCallback onChangeColor; // Hàm thay đổi màu cũng được truyền từ widget cha
  final VoidCallback onChangeSize;
  final double size;
  ColorBox({required this.color, required this.onChangeColor, required this.onChangeSize, required this.size});

  @override
  _ColorBoxState createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onChangeColor, // Khi bấm vào thì gọi hàm thay đổi màu từ widget cha
      onDoubleTap: widget.onChangeSize,
      child: AnimatedContainer(
        height: widget.size,
        width: widget.size,
        color: widget.color, // Hiển thị màu sắc từ widget cha
        margin: EdgeInsets.all(8),
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      ),
    );
  }
}