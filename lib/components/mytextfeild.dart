import "package:flutter/material.dart";

class MyTextFeild extends StatelessWidget {
  const MyTextFeild(
      {super.key,
      required this.obscure,
      required this.controller,
      required this.text});
  final bool obscure;
  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        
      ),
    );
  }
}
