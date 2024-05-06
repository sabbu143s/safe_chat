// ignore_for_file: prefer_const_constructors, avoid_print

import "package:animated_text_kit/animated_text_kit.dart";
import "package:flutter/material.dart";
import "package:safe_chat/components/Mybutton.dart";
import "package:safe_chat/components/mytextfeild.dart";
import "package:safe_chat/services/authservices.dart";
import "package:safe_chat/services/constants.dart";

class RegisterPage extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  RegisterPage({super.key,required this.onTap});
  final Function()? onTap;
  void register(BuildContext context)
  {
   try{
    final  authServices = AuthServices();
    authServices.registerwithemailandpass(email.text, password.text);
    Navigator.pushNamed(context, 'intropage');
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
              text: "Register",
              onTap:() => register(context),
            ),
            Row(
              children: [
                Text(
                  "Already a member ?",
                  style: style1,
                ),
                TextButton(
                  onPressed:onTap,
                  child: Text(
                    "Login now",
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
