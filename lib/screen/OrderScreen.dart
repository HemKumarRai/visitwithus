import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/components/order_item.dart';
import 'package:visitwith_us/model/orders.dart' show Orders, orders;

class OrderScreen extends StatelessWidget {
  static const routName = "/order_screen";
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context).orders;
    return Scaffold(
      appBar: AppBar(
        title: Text("Yours Orders"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, i) => OrderItem(orderData[i]),
        itemCount: orderData.length,
      ),
    );
  }
}
