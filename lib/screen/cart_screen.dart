import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/components/cart_item.dart';
import 'package:visitwith_us/model/cart_provider.dart' show Cart;
import 'package:visitwith_us/model/orders.dart';

//class CartScreen extends StatelessWidget {
//  static const String routeName = "/cart_screen";
//
//  @override
//  Widget build(BuildContext context) {
//    final cart = Provider.of<Cart>(context);
//    final crt = Provider.of<CartItem>(context);
//    final order = Provider.of<Orders>(context, listen: false);
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Your Cart"),
//      ),
//      body: Column(
//        children: <Widget>[
//          Card(
//            margin: EdgeInsets.all(10),
//            child: Padding(
//              padding: EdgeInsets.all(8),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(
//                    "Total",
//                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                  ),
//                  Spacer(),
//                  Chip(
//                    label: Text(
//                      "\$${cart.totalAmount}",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                    backgroundColor: Theme.of(context).primaryColor,
//                  ),
//                  FlatButton(
//                      child: Text(
//                        "ORDER NOW",
//                        style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 18,
//                            color: Theme.of(context).primaryColor),
//                      ),
//                      onPressed: () {
//                        order.addOrder(
//                            cart.items.values.toList(), cart.totalAmount);
//                        cart.clearCart();
//                      })
//                ],
//              ),
//            ),
//          ),
//          SizedBox(
//            height: 10,
//          ),
//          Expanded(
//            child: ListView.builder(
//                itemCount: cart.itemCount,
//                itemBuilder: (context, i) => CartItem(
//                      id: cart.items.values.toList()[i].id,
//                      title: cart.items.values.toList()[i].title,
//                      productId: cart.items.keys.toList()[i],
//                      price: cart.items.values.toList()[i].price,
//                      quantity: cart.items.values.toList()[i].quantity,
//                    )),
//          )
//        ],
//      ),
//    );
//  }
//}
class CartScreen extends StatelessWidget {
  static const String routeName = "/cart_screen";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final order = Provider.of<Orders>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Chip(
                    label: Text(
                      "\$${cart.totalAmount}",
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  FlatButton(
                    child: Text(
                      "BOOK NOW",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
//                      order.addOrder(
//                          cart.items.values.toList[i], cart.totalAmount);
//                      cart.clearCart();
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: cart.itemCount,
                itemBuilder: (context, i) => CartItem(
                      id: cart.items.values.toList()[i].id,
                      title: cart.items.values.toList()[i].title,
                      productId: cart.items.keys.toList()[i],
                      price: cart.items.values.toList()[i].price,
                      quantity: cart.items.values.toList()[i].quantity,
                    )),
          )
        ],
      ),
    );
  }
}
