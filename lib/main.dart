import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/model/orders.dart';
import 'package:visitwith_us/model/products.dart';
import 'package:visitwith_us/screen/OrderScreen.dart';
import 'package:visitwith_us/screen/cart_screen.dart';
import 'package:visitwith_us/screen/products_detail.dart';

import 'model/cart_provider.dart';
import 'screen/home_view_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Visit Your Favourite Place",
        theme: ThemeData(
            primaryColor: Colors.blueGrey,
            accentColor: Colors.red,
            fontFamily: "Lato"),
        initialRoute: "/",
        routes: {
          "/": (ctx) => HomeViewScreen(),
          ProductsDetail.routName: (ctx) => ProductsDetail(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routName: (ctx) => OrderScreen(),
        },
      ),
    );
  }
}
