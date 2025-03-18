import 'package:e_commerce_app/Screen/AccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/Login/LoginScreen.dart';

class ECommerceScreen extends StatefulWidget{
  //Khai bao thuoc tinh toan cuc(su dung o moi noi)
  final String username;
  //khoi tao constructor
  ECommerceScreen({super.key, required this.username});

  @override
  State<StatefulWidget> createState() => _ECommerceScreenState();
}

class _ECommerceScreenState extends State<ECommerceScreen> {
  //Khoi tao thuoc tinh
  int _selectedIndex = 0;
  static const TextStyle textStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);
  //Screen
  static List<Widget> _eCommerceOptions = <Widget>[
    const Text('Screen 1', style: textStyle,),
    const Text('Screen 2', style: textStyle,),
    const Text('Screen 3', style: textStyle,),
  ];

  //Khoi tao method
  //tapped
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome, ${widget.username}',
          style: TextStyle(
            color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.deepOrange,
        //Xoa nut back
        automaticallyImplyLeading: false,
        //Them account button
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => AccountScreen(username: widget.username,),
                  ),
                );
              },
              icon: Icon(Icons.account_circle_outlined),
          ),
        ],

      ),
      ////APP
      body: Center(
        child: _eCommerceOptions.elementAt(_selectedIndex),
      ),
      
      //BOTTOM NAVIGATIONBAR
      bottomNavigationBar: BottomNavigationBar(
        //set color for bottomnavigationbar
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'Dashboard',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_outlined),
            label: 'Cart',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
