// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.w300),
          ),
          Icon(
            Ionicons.person_circle_outline,
            size: 120,
          ),
          SizedBox(height: 6),
          Text(
            "Shabarish",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w500, letterSpacing: 2),
          ),
        ],
      ),
    );
  }
}
