import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:visitwith_us/components/product_item.dart';
import 'package:visitwith_us/model/products.dart';
//import 'package:visitwith_us/model/products.dart';

class ProductGrid extends StatelessWidget {
  final bool isFavourite;
  ProductGrid(this.isFavourite);
  @override
  Widget build(BuildContext context) {
    final products = isFavourite
        ? Provider.of<Products>(context).favourites
        : Provider.of<Products>(context).items;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 30,
          crossAxisSpacing: 10,
          childAspectRatio: 4 / 3,
        ),
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
              value: products[index],
              child: ProductItem(),
            ));
  }
}
