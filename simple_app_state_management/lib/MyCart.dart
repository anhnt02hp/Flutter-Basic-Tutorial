import 'package:flutter/material.dart';
import 'package:simple_app_state_management/MyCatalog.dart';
import 'package:simple_app_state_management/ProductItem.dart';
import 'package:simple_app_state_management/product_mock_data.dart';
class MyCart extends StatefulWidget{
  const MyCart({super.key});

  @override
  State<StatefulWidget> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  //Khoi tao thuoc tinh
  final List<ProductMockData> cart = [];
  int totalProduct = 0;

  //Khoi tao phuong thuc
  void addToCart(ProductMockData product){
    setState(() {
      cart.add(product);
      totalProduct++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'CART',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: product_mock.length,
              itemBuilder: (context, index) {
                return ProductItem(onAddToCart: addToCart, product: product_mock[index]);
              },
            ),
          ),
          SizedBox(height: 60,),
          Text('Total Product: ${totalProduct}'),
        ],
      ),
    );
  }
}