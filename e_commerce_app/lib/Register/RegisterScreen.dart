import 'package:e_commerce_app/Login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/data/user_pass_mock_data.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>{
  final TextEditingController _username = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Register',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'REGISTER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _username,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter USERNAME',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter PASSWORD',
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: _registerUser,
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }

  void _registerUser() {
    final String username = _username.text;
    final String password = _password.text;

    if(username.isNotEmpty && password.isNotEmpty){
      //Create new UserMockData object
      UserPassMockData newUserPass = UserPassMockData(user_mock: username, pass_mock: password);
      //Add new UserMockData on the list
      setState(() {
        mockUserPass.add(newUserPass);
      });
      //Delete information in TextField
      _username.clear();
      _password.clear();
      //Display Register Sucessful
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User Registered Successfully!')),
      );
      //Change to Login Screen
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    } else{
      //Error when Register
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both username and password')),
      );
    }
  }
}

