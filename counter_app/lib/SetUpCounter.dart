import 'package:flutter/material.dart';

class SetUpCounter extends StatefulWidget{
  //Khoi tao thuoc tinh
  final Function(int) onCounterChanged;
  //KKhoi tao constructor
  const SetUpCounter({super.key, required this.onCounterChanged});
  //Khoi tao method
  @override
  State<StatefulWidget> createState() => _SetUpCounterState();
}

class _SetUpCounterState extends State<SetUpCounter>{
  //Khoi tao thuoc tinh
  int _childCounter = 0;
  //Khoi tao method
  void _increaseCounter() {
    setState(() {
      _childCounter++;
    });
    //Goi ham callback de gui gia tri _childCounter len CounterScreen
    widget.onCounterChanged(_childCounter);
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Set Up Counter',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text('${_childCounter}'),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: _increaseCounter,
                  child: const Text('INCREASE!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}