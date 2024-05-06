// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:safe_chat/components/Mydrawer.dart";
import "package:safe_chat/services/authservices.dart";
import "package:safe_chat/services/firestore.dart";

class ChatPage extends StatelessWidget {
  ChatPage({super.key});
  final TextEditingController msg = TextEditingController();
  final auth = AuthServices();
  final firestore = FirestoreService();
  final List<String> msglist = [];
  void logout() {
    auth.signout();
  }

  void addmsg() {
    firestore.addmsg(msg.text);
    msglist.add(msg.text);
    print(msglist);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: logout,
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: firestore.getmsg(),
            builder: (context, snapshot) {
              if(snapshot.hasData)
              {
                final messages = snapshot.data!.docs;
                for (var msgss in messages)
                {
                  final msgtext = msgss.data();
                }
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: msg,
              decoration: InputDecoration(
                hintText: "Type here..",
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    addmsg();
                    // Navigator.pop(context);
                    msg.clear();
                  },
                ),
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
// Text(
//                       msg.text,
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                       textAlign: TextAlign.right,
//                     ),