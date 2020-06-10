//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/components/app_drawer.dart';
import 'package:visitwith_us/components/badge.dart';
import 'package:visitwith_us/components/product.grid.dart';
import 'package:visitwith_us/components/product_item.dart';
import 'package:visitwith_us/model/cart_provider.dart';
import 'package:visitwith_us/model/products.dart';
import 'package:visitwith_us/screen/cart_screen.dart';

enum FilterOptions { Favourites, All }

class HomeViewScreen extends StatefulWidget {
  static const routName = "/home_view_screen";
  @override
  _HomeViewScreenState createState() => _HomeViewScreenState();
}

class _HomeViewScreenState extends State<HomeViewScreen> {
  bool _showFavourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Visit Your Favourite Place",
            style: TextStyle(fontFamily: "Lato"),
          ),
          leading: IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AppDrawer()));
            },
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favourites) {
                    _showFavourite = true;
                  } else {
                    _showFavourite = false;
                  }
                });
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: FilterOptions.Favourites,
                  child: Text("Show Favourites"),
                ),
                PopupMenuItem(
                  value: FilterOptions.All,
                  child: Text("Show All"),
                ),
              ],
            ),

            //consumer only affect the part that need to
            // rebuild rather than refresh to whole screen
            Consumer<Cart>(
              builder: (_, cart, child) {
                return Badge(
                  child: child,
                  value: cart.itemCount.toString(),
                );
              },
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, CartScreen.routeName);
                },
              ),
            )
          ],
        ),
        drawer: AppDrawer(),
        body: ProductGrid(
          _showFavourite,
        ));
  }
}
