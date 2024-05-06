// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key,required this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.logout),
      onPressed: onPressed,
    );
  }
}
