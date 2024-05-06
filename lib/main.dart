// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:safe_chat/firebase_options.dart';
import 'package:safe_chat/pages/chatpage.dart';
import 'package:safe_chat/pages/loginpage.dart';
import 'package:safe_chat/pages/registerpage.dart';
import 'package:safe_chat/services/authgate.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthGate(),
      routes: {
        // 'loginpage':(context) => LoginPage(),
        // 'registerpage':(context) => RegisterPage(),
        'chatpage':(context) => ChatPage(),
      },
    );
  }
}
