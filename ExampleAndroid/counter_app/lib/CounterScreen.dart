import 'package:counter_app/SetUpCounter.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/GetCounter.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});
  @override
  State<StatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
  //Khoi tao thuoc tinh
  int _parentCounter = 0;
  //Khoi tao constructor

  //Khoi tao method: Nhan gia tri counter tu SetUpCounter
  void _updateCounter(int childCounter){
    setState(() {
      _parentCounter = childCounter;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Counter Screen',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Container(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SetUpCounter(onCounterChanged: _updateCounter)), //Truyen ham _updateCounter xuong cho SetUpCounter
                  );
                },
                child: Text('Go to Set Up Counter!')
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GetCounter(counter: _parentCounter), //Hien thi gia tri counter duoc truyen tu lop SetUpCounter len GetCounter
                    ),
                  );
                },
                child: Text('Go to Get Counter!')
              ),
            ],
          ),
        ),
      ),
    );
  }
}