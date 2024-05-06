// ignore_for_file: prefer_const_constructors, empty_catches, use_key_in_widget_constructors, avoid_print

import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";
import "package:safe_chat/components/Mybutton.dart";
import "package:safe_chat/components/mytextfeild.dart";
import "package:safe_chat/services/authservices.dart";
//import "package:safe_chat/services/authservices.dart";
import "package:safe_chat/services/constants.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  
  LoginPage({super.key,required this.onTap});
  final Function()? onTap;
  void login()
  {
    try{
    final  authServices = AuthServices();
    authServices.signinwithemailandpass(email.text, password.text);
    }
    catch (e)
    {
      print(e);
    } 
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, color: Colors.pinkAccent, size: 110),
            SizedBox(height: 16),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText(
                "Safe_App",
                speed: Duration(milliseconds: 90),
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
              ),
            ]),
            SizedBox(height: 16),
            MyTextFeild(obscure: false, controller: email, text: "Email"),
            SizedBox(height: 16),
            MyTextFeild(obscure: true, controller: password, text: "Password"),
            SizedBox(height: 26),
            MyButton(
              text: "login",
              onTap: login,
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  "Not a member ?",
                  style: style1,
                ),
                TextButton(
                  onPressed:onTap,
                  child: Text(
                    "Register now",
                    style: style1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
