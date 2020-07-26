//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:shop_app/screens/product_details.dart';
//
//class Products extends StatefulWidget {
//  @override
//  _ProductsState createState() => _ProductsState();
//}
//
//class _ProductsState extends State<Products> {
////  map of list
//  var product_list = [
//    {
//      "name": "Blazer",
//      "picture": "images/products/blazer1.jpeg",
//      "old_price": 120,
//      "price": 100,
//    },
//    {
//      "name": "Red dress",
//      "picture": "images/products/dress1.jpeg",
//      "old_price": 150,
//      "price": 120,
//    },
//    {
//      "name": "Red dress",
//      "picture": "images/products/hills1.jpeg",
//      "old_price": 150,
//      "price": 120,
//    },
//    {
//      "name": "Red dress",
//      "picture": "images/products/skt1.jpeg",
//      "old_price": 150,
//      "price": 120,
//    },
//    {
//      "name": "Red dress",
//      "picture": "images/products/pants2.jpeg",
//      "old_price": 150,
//      "price": 120,
//    },
//    {
//      "name": "Red dress",
//      "picture": "images/products/shoe1.jpg",
//      "old_price": 150,
//      "price": 120,
//    },
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return GridView.builder(
//        itemCount: product_list.length,
//        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 2), // number of axis of column is 2
//        itemBuilder: (BuildContext context, int index) {
//          // context is where widget sit inside of app
//          return Padding(
//            padding: const EdgeInsets.all(4.0),
//            child: Single_prod(
//                prod_name: product_list[index]['name'],
//                prod_picture: product_list[index]['picture'],
//                prod_old_price: product_list[index]['old_price'],
//                prod_price: product_list[index]['price']),
//          );
//        });
//  }
//}
//
//class Single_prod extends StatelessWidget {
////  creating a variable
//  final prod_name;
//  final prod_picture;
//  final prod_old_price;
//  final prod_price;
//
////  constructor
//  Single_prod({
//    this.prod_name,
//    this.prod_picture,
//    this.prod_old_price,
//    this.prod_price,
//  });
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Hero(
//        tag: new Text("hero 1"),
//        child: Material(
//          child: InkWell(
//            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
////              here we are passing the values of the product to the product details page
//                builder: (context) => new ProductDetails(
//                  product_detail_name: prod_name,
//                  product_detail_new_price: prod_price,
//                  product_detail_old_price: prod_old_price,
//                  product_detail_picture: prod_picture,
//                ))),
//            child: GridTile(
//              footer: Container(
//                color: Colors.white,
//                child: new Row(
//                  children: <Widget>[
//                    Expanded(
//                      child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
//                    ),
//
//                    new Text("Rs ${prod_price}", style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),)
//                  ],
//                )
//              ),
//              child: Image.asset(
//                prod_picture,
//                fit: BoxFit.cover,
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
