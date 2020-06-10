import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/model/products.dart';

class ProductsDetail extends StatelessWidget {
  static const String routName = "/product_detail_screen";

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedProduct =
        Provider.of<Products>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedProduct.imageURL,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '\$${selectedProduct.price}',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              selectedProduct.description,
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 25,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              child: IconButton(
                icon: Icon(
                  Icons.place,
                  size: 40,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
