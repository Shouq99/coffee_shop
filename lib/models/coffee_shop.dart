import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    // black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/black.jpg",
    ),

    // cup coffee
    Coffee(
      name: 'latte',
      price: "3.50",
      imagePath: "lib/images/cab.png",
    ),

    // flatwhite coffee
    Coffee(
      name: 'flatwhite',
      price: "4.40",
      imagePath: "lib/images/flatwhite.png",
    ),

    // ice coffee
    Coffee(
      name: 'ice',
      price: "4.50",
      imagePath: "lib/images/ice.png",
    ),

  ];
  //user cart
  List<Coffee> _userCart = [];
  //get coffee list
  List<Coffee> get coffeeShop => _shop;
  //get user cart
 List<Coffee> get userCart => _userCart;
// add item to cart
void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
}
//remove item from cart
void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
  notifyListeners();
}

}