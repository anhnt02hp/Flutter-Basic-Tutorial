import 'package:flutter/material.dart';
import 'package:simple_app_state_management/product_mock_data.dart';
class ProductItem extends StatelessWidget{
  final ProductMockData product;
  final Function(ProductMockData) onAddToCart;

  ProductItem({super.key, required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      trailing: ElevatedButton(
        onPressed: () {
          onAddToCart(product);
        },
        child: const Text('ADD'),
      ),
    );
  }
}