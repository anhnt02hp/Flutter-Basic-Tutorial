import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/CartModel.dart';
import 'package:state_management/Item.dart';

class AppWithProvider extends StatefulWidget{
  const AppWithProvider ({super.key});

  @override
  State<StatefulWidget> createState() => _StateManagementAppState();
}

class _StateManagementAppState extends State<AppWithProvider>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'State Management',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        actions: [
          Consumer<CartModel>(
              builder: (context, cart, child) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${cart.itemLength}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${cart.totalPrice}'),
                    ),
                  ],
                );
              }
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Consumer<CartModel>(
                builder: (context, cart, child) {
                  return ListView(
                    children: cart.cartItems.map((item) => ListTile(title: Text('${item.name}           ${item.price}'),)).toList(),
                  );
                },
              )
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  final cartModel_access = Provider.of<CartModel>(context, listen: false); //ham nay de truy cap vao CartModel.dart
                  cartModel_access.addItemToCart(Item(name: 'Product ${cartModel_access.itemLength + 1}', price: 12.0));
                },
                child: const Text('ADD'),
              ),
              SizedBox(width: 60,),
              ElevatedButton(
                onPressed: (){
                  final cartModel_access = Provider.of<CartModel>(context, listen: false);
                  cartModel_access.removeItemFromCart(cartModel_access.cartItems.last);
                },
                child: const Text('REMOVE'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
