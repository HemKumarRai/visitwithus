import 'package:flutter/cupertino.dart';
import 'package:visitwith_us/components/cart_item.dart';

//class OrderItem {
//  final String id;
//  final double amount;
//  final List<CartItem> products;
//  final DateTime dateTime;
//
//  OrderItem(
//      {@required this.id,
//      @required this.amount,
//      @required this.products,
//      @required this.dateTime});
//}
//
//class Orders with ChangeNotifier {
//  List<OrderItem> _orders = [];
//
//  List<OrderItem> get orders {
//    return [..._orders];
//  }
//
//  //add item from cart to order
//  void addOrder(List<CartItem> cartProducts, double total) {
//    _orders.insert(
//      0,
//      OrderItem(
//        id: DateTime.now().toString(),
//        amount: total,
//        products: cartProducts,
//        dateTime: DateTime.now(),
//      ),
//    );
//    notifyListeners();
//  }
//}

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {@required this.id,
      @required this.amount,
      @required this.products,
      @required this.dateTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        amount: total,
        products: cartProducts,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}