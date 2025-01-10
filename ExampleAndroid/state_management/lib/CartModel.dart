import 'package:flutter/material.dart';
import 'package:state_management/Item.dart';

class CartModel with ChangeNotifier{
  //Khoi tao thuoc tinh
  List<Item> _cartItems = [];
  double _totalPrice = 0.0;

  //get thong tin de su dung tai noi khac(các biến cartItems, totalPrice, itemLength có thể được gọi ra tại các class khác)
  List<Item> get cartItems => _cartItems;
  double get totalPrice => _totalPrice;
  int get itemLength => _cartItems.length;

  //Khoi tao method
  void addItemToCart(Item item){
    _cartItems.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void removeItemFromCart(Item item){
    _cartItems.remove(item);
    if(_totalPrice > 0){
      _totalPrice -= item.price;
    } else{
      _totalPrice = 0;
    }
    notifyListeners();
  }
}

