// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:safe_chat/pages/loginpage.dart';
import 'package:safe_chat/pages/registerpage.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool showloginpage = true;
  void togglepages()
  {
    setState(() {
      showloginpage =!showloginpage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showloginpage)
    {
      return LoginPage(onTap: togglepages,);
    }
    else
    {
      return RegisterPage(onTap: togglepages,);
    }
  }
}