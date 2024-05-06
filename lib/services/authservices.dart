// ignore_for_file: empty_catches, avoid_print, use_rethrow_when_possible

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices
{
  final FirebaseAuth auth = FirebaseAuth.instance;
  
  Future<UserCredential>signinwithemailandpass(String email,String password)async
  {
    try
    {
    UserCredential newUser  = await auth.signInWithEmailAndPassword(email: email, password: password);
    return newUser;
    }on FirebaseAuthException catch(e)
    {
      throw Exception(e);
    }
  }
  
  Future<void>signout()async
  {
    return await auth.signOut(); 
  }

  Future<UserCredential>registerwithemailandpass(String email,String password)async{
    try{
    UserCredential createdUser = await auth.createUserWithEmailAndPassword(email: email, password: password);
    return createdUser;
    }on FirebaseAuthException catch(e)
    {
      throw Exception(e);
    }
  }
  
   Future<User?>currentUser()async
   {
    User? user=  auth.currentUser;
    return user;
   }
}