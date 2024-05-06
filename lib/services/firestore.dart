import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService{
  final auth = FirebaseAuth.instance;
  final CollectionReference messages = FirebaseFirestore.instance.collection("messages");

  Future<void>addmsg(String msg)
  { 
    return messages.add({
      'text':msg,
      'time':Timestamp.now(),
    });
    
  }

  Stream<QuerySnapshot>getmsg() {
    return  messages.snapshots();
  }
}