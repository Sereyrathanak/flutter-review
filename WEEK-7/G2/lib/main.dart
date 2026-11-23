import 'package:flutter/material.dart';

enum Product {
  coffee(name: "Coffee", icon: Icons.coffee, price: 3.0),
  cake(name: "Cake", icon: Icons.cake, price: 4.0),
  pizza(name: "Pizza", icon: Icons.local_pizza, price: 8.0),
  icecream(name: "Ice cream", icon: Icons.icecream, price: 2.0),
  burger(name: "Burger", icon: Icons.lunch_dining, price: 6.0),
  juice(name: "Juice", icon: Icons.local_drink, price: 2.5);

  const Product({required this.name, required this.icon, required this.price});

  final String name;
  final IconData icon;
  final double price;
}


//
//  Create your stateless widget ProductCard here
//
//


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "EX-2 - Stateless Widgets",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          // REMOVE THIS CODE AND REPLACE WITH YOUR OWN CODE
          // We give here an example of CircleAvatar usage (with an icon)
          child: CircleAvatar(
            radius: 25,
            child: Icon(Product.coffee.icon),
          ),
        ),
      ),
    ),
  );
}
