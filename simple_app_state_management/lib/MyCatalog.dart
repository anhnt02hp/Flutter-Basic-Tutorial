import 'package:flutter/material.dart';
import 'package:simple_app_state_management/MyCart.dart';
import 'package:simple_app_state_management/product_mock_data.dart';
import 'package:simple_app_state_management/ProductItem.dart';

class MyCatalog extends StatelessWidget{
  //Khoi tao thuoc tinh
  final Function(ProductMockData) onAddToCart;
  final int totalProduct;
  //Khoi tao constructor
  const MyCatalog({super.key, required this.onAddToCart, required this.totalProduct});

  //Khoi tao method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'CATALOG',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MyCart())
              );
            }, 
            icon: Icon(Icons.add_shopping_cart_outlined),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            ListView.builder(
              itemCount: product_mock.length,
              itemBuilder: (context, index) {
                return ProductItem(product: product_mock[index], onAddToCart: onAddToCart);
              },
            ),
            SizedBox(height: 60,),
            Text('Total Product: ${totalProduct}'),
          ],
        ),
      ),
    );
  }
}