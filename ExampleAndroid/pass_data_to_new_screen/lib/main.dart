import 'package:flutter/material.dart';
import 'package:pass_data_to_new_screen/WelcomePage.dart';

void main() => runApp(const PassDataExampleApp());

class PassDataExampleApp extends StatelessWidget{
  const PassDataExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PassDataExample(),
    );
  }
}

class PassDataExample extends StatefulWidget{
  const PassDataExample({super.key});

  @override
  State<StatefulWidget> createState() => _PassDataExampleState();
}

class _PassDataExampleState extends State<PassDataExample>{
  //Step 2: Create Controller for TextField
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PassDataExample'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Step 1: create TextField to receive Input data
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //Step 3: add controller
              controller: _name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //Step 3: add controller
              controller: _email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              //Step 3: add controller
              controller: _phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Phone',
              ),
            ),
          ),
          SizedBox(height: 20),
          //Step 4: Create Button to Send data
          ElevatedButton(
            //Step 5: Pass Data to Welcome Page when Click to button
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => WelcomePage(name: _name.text, email: _email.text, phone: _phone.text,)
                  ),
                );
              },
              child: const Text('Go to Welcome Page!'),
          ),
        ],
      ),
    );
  }
}