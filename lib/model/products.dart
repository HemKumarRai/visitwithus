import 'package:flutter/cupertino.dart';
import 'package:visitwith_us/model/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: "first",
        title: "KathMandu",
        price: 2000,
        rating: '⭐⭐⭐⭐⭐',
        description:
            "Kathmandu, Nepal's capital, is set in a valley surrounded by the Himalayan mountains. At the heart of the old city’s mazelike alleys is Durbar Square, which becomes frenetic during Indra Jatra, a religious festival featuring masked dances. Many of the city's historic sites were damaged or destroyed by a 2015 earthquake. Durbar Square's palace, Hanuman Dhoka, and Kasthamandap, a wooden Hindu temple, are being rebuilt.",

//        "The best watch you will find anywhere.",
        imageURL: ('assets/images/ktm.jpg'),
//            "https://www.surfstitch.com/on/demandware.static/-/Sites-ss-master-catalog/default/dwef31ef54/images/MBB-M43BLK/BLACK-WOMENS-ACCESSORIES-ROSEFIELD-WATCHES-MBB-M43BLK_1.JPG",
        isFavourite: false),
    Product(
        id: "second",
        title: "Pokhara",
        price: 1500,
        rating: '⭐⭐⭐⭐',
        description:
            "Pokhara is a metropolitan city in Nepal, which serves as the capital of Gandaki Pradesh. It is the country's largest metropolitan city in terms of area ",

//        "Quality and comfort shoes with fashionable style.",
        imageURL: ('assets/images/pokhara.jpg'),
//            "https://assets.adidas.com/images/w_600,f_auto,q_auto:sensitive,fl_lossy/e06ae7c7b4d14a16acb3a999005a8b6a_9366/Lite_Racer_RBN_Shoes_White_F36653_01_standard.jpg",
        isFavourite: false),
    Product(
        id: "third",
        title: "Mt. Everest",
        price: 80000,
        rating: '⭐⭐⭐⭐⭐',
        description:
            "Mount Everest is Earth's highest mountain above sea level, "
            "located in the Mahalangur Himal sub-range of the Himalayas. "
            "The China–Nepal border runs across its summit point",

//        "The compact and powerful gaming laptop under the budget.",
        imageURL: ('assets/images/mteverest.jpg'),
//            "https://d4kkpd69xt9l7.cloudfront.net/sys-master/images/h57/hdd/9010331451422/razer-blade-pro-hero-mobile.jpg",
        isFavourite: false),
    Product(
        id: "four",
        title: "Chitawan",
        rating: '⭐⭐⭐⭐',
        price: 1000,
        description: "Chitwan District, Nepali: चितवन, "
            "is one of 77 districts of Nepal, and is located in the southwestern part of Bagmati Pradesh with Bharatpur, "
            "the fourth largest city of Nepal, as its district headquarter. ",

//        "A red color tshirt you can wear at any occassion.",
        imageURL: ('assets/images/chitawan.jpg'),
//            "https://5.imimg.com/data5/LM/NA/MY-49778818/mens-round-neck-t-shirt-500x500.jpg",
        isFavourite: false),
  ];

  // ---- this returns all items of the product list ---------
  List<Product> get items {
    return [..._items];
  }

  //show favourite item

  List<Product> get favourites {
    return _items.where((prodItem) {
      return prodItem.isFavourite;
    }).toList();
  }

//find the product using id
  Product findById(String id) {
//    return _items.firstWhere(prod)=>prod,id==id);
    return _items.firstWhere((prod) => prod.id == id);
  }

//  // --- this returns only favourite products from the list -----
//  List<Product> get favourites {
//    return _items.where((prodItem) {
//      return prodItem.isFavourite;
//    }).toList();
//  }
}
