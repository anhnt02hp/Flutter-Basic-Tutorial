import 'package:flutter/material.dart';
import 'package:simple_app_state_management/MyCatalog.dart';
void main() => runApp(const ShoppingApp());

class ShoppingApp extends StatelessWidget{
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCatalog(onAddToCart: (ProductMockData ) {  }, totalProduct: 1,),
    );
  }
}