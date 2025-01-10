import 'package:flutter/material.dart';
import 'package:no_state_management/Item.dart';

class AppWithNoProvider extends StatefulWidget{
  const AppWithNoProvider({super.key});

  @override
  State<StatefulWidget> createState() => _AppWithNoProviderState();
}

class _AppWithNoProviderState extends State<AppWithNoProvider>{
  //Khoi tao thuoc tinh
  List<Item> _cartItems = [];
  double _totalPrice = 0.0;

  //Khoi tao method
  void _addItemToCart(Item item){
    setState(() {
      _cartItems.add(item);
      _totalPrice += item.price;
    });
  }

  void _removeItemFromCart(Item item){
    setState(() {
      _cartItems.remove(item);
      if(_totalPrice > 0){
        _totalPrice -= item.price;
      }else {
        _totalPrice = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'No State Management',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(Icons.shopping_cart),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${_cartItems.length}'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${_totalPrice}'),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: _cartItems.map((item) => ListTile(title: Text('${item.name}           ${item.price}'))).toList(),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      _addItemToCart(Item(name: 'Product ${_cartItems.length + 1}', price: 12.0));
                    },
                    child: const Text('ADD')
                ),
                SizedBox(width: 60,),
                ElevatedButton(
                  onPressed: (){
                    if(_cartItems.isNotEmpty) {
                      _removeItemFromCart(_cartItems.last);
                    }
                  },
                  child: const Text('REMOVE'),
                ),
              ],
            ),
          ],
        ),
      );
  }
}