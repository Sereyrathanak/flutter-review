import 'package:flutter/material.dart';

enum Sport {
  football(name: "Football", icon: Icons.sports_soccer, color: Colors.green),
  basketball(name: "Basketball", icon: Icons.sports_basketball, color: Colors.orange),
  tennis(name: "Tennis", icon: Icons.sports_tennis, color: Colors.purple),
  volleyball(name: "Volleyball", icon: Icons.sports_volleyball, color: Colors.blue),
  rugby(name: "Rugby", icon: Icons.sports_rugby, color: Colors.brown),
  golf(name: "Golf", icon: Icons.sports_golf, color: Colors.teal);

  const Sport({required this.name, required this.icon, required this.color});

  final String name;
  final IconData icon;
  final Color color;
}


//
//  Create your stateless widget SportCard here
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
            backgroundColor: Sport.football.color,
            child: Icon(Sport.football.icon, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
