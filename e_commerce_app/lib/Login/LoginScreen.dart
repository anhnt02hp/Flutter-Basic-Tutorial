import 'package:e_commerce_app/Register/RegisterScreen.dart';
import 'package:e_commerce_app/Screen/ECommerceScreen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/data/user_pass_mock_data.dart';
import 'package:e_commerce_app/Screen/AccountScreen.dart';

class LoginScreen extends StatelessWidget{
  //Step 3: Create controller for TextField
  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.grey,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.grey,
            ),
          ),
          //Step 1: Create TextField to receive Data
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              //Step 4: add controller
              controller: _username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter USERNAME',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              //add controller
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter PASSWORD',
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20,),
          //Step 2: Login Button
          ElevatedButton(
            onPressed: (){
              //Step 5: validator user name and password
              //khoi tao doi tuong user de klay mock_data
              final user = mockUserPass.firstWhere(
                  (user) => user.user_mock == _username.text && user.pass_mock == _password.text,
                  orElse: () => UserPassMockData(user_mock: '', pass_mock: '')
              );
              //validator
              if(user.user_mock.isNotEmpty && user.pass_mock.isNotEmpty){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ECommerceScreen(username: _username.text,),
                  ),
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Invalid username or password!')),
                );
              }
            },
            child: const Text('Login'),
          ),
          SizedBox(height: 10,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do not have Account? '),
                ElevatedButton(
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text('Press here!'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}