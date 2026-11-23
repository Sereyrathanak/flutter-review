import 'package:flutter/material.dart';

enum Device {
  lamp(name: "Lamp", icon: Icons.lightbulb, room: "Bedroom"),
  tv(name: "TV", icon: Icons.tv, room: "Living room"),
  fan(name: "Fan", icon: Icons.air, room: "Office"),
  speaker(name: "Speaker", icon: Icons.speaker, room: "Kitchen"),
  heater(name: "Heater", icon: Icons.local_fire_department, room: "Bathroom"),
  camera(name: "Camera", icon: Icons.videocam, room: "Garage");

  const Device({required this.name, required this.icon, required this.room});

  final String name;
  final IconData icon;
  final String room;
}


//
//  Create your stateless widget DeviceCard here
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
            backgroundColor: Colors.grey,
            child: Icon(Device.lamp.icon, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}
