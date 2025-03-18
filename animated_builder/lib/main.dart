import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedApp(),
    );
  }
}

class AnimatedApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animaed Builder'),
        centerTitle: true,
      ),
      body: const Center(
        child: MyAnimatedWidget(),
      ),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget{
  const MyAnimatedWidget({super.key});
  @override
  State<StatefulWidget> createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child){
        return Opacity(
          opacity: _animation.value,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        );
      },
    );
  }
}