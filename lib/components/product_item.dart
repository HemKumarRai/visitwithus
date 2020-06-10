//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/model/cart_provider.dart';
import 'package:visitwith_us/model/product.dart';
import 'package:visitwith_us/screen/products_detail.dart';

//class ProductItem extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final loadedProduct = Provider.of<Product>(context, listen: false);
//    final cart = Provider.of<Cart>(context, listen: false);
//    return ClipRRect(
//      borderRadius: BorderRadius.circular(10.0),
//      child: GridTile(
//        child: InkWell(
//          onTap: () {
//            Navigator.pushNamed(context, ProductsDetail.routName,
//                arguments: loadedProduct.id);
//          },
//          child: Image.asset(
//            loadedProduct.imageURL,
//            fit: BoxFit.cover,
//          ),
//        ),
//        footer: GridTileBar(
//          title: Text(
//            loadedProduct.title,
//            textAlign: TextAlign.center,
//          ),
//          leading: Consumer<Product>(
//            builder: (_, prod, child) {
//              return IconButton(
//                icon: Icon(
//                    prod.isFavourite ? Icons.favorite : Icons.favorite_border),
//                onPressed: () {
//                  prod.toggleIsFavourite();
//                },
//                color: Theme.of(context).accentColor,
//              );
//            },
//          ),
//          trailing: IconButton(
//            icon: Icon(
//              Icons.add,
//            ),
//            onPressed: () {
//              cart.addToCart(
//                  loadedProduct.id, loadedProduct.title, loadedProduct.price);
//            },
//            color: Theme.of(context).accentColor,
//          ),
//        ),
//      ),
//    );
//  }
//}

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedProduct = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    print('widget rebuilds');
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ProductsDetail.routName,
                arguments: loadedProduct.id);
          },
          child: Image.asset(
            loadedProduct.imageURL,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            loadedProduct.title,
            textAlign: TextAlign.center,
          ),
          leading: Consumer<Product>(
            builder: (ctx, prod, child) => IconButton(
              icon: prod.isFavourite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              onPressed: () {
                prod.toggleIsFavourite();
              },
              color: Theme.of(context).accentColor,
            ),
          ),
          trailing: Row(
            children: <Widget>[
              Text(loadedProduct.rating),
              IconButton(
                icon: Icon(Icons.add_to_queue),
                onPressed: () {
                  cart.addToCart(loadedProduct.id, loadedProduct.title,
                      loadedProduct.price);
                  Scaffold.of(context).hideCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(SnackBar(
                    backgroundColor: Theme.of(context).primaryColor,
                    content: Text('Added item to the cart'),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'UNDO',
                      textColor: Colors.black87,
                      onPressed: () {
//                    cart.re(loadedProduct.id);
                      },
                    ),
                  ));
                },
                color: Theme.of(context).accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
