// ignore_for_file: prefer_const_constructors, file_names

import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text,required this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 124, 168, 245),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
