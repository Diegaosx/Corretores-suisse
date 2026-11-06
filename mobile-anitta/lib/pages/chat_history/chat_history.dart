import 'package:anitta/backend/backend.dart';
import 'package:anitta/pages/side_menu/side_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatHistory extends StatefulWidget {
  const ChatHistory({super.key});

  @override
  State<ChatHistory> createState() => _ChatHistoryState();
}

class _ChatHistoryState extends State<ChatHistory> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<dynamic> _messages = [];

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _loadMessages() async {
    DocumentSnapshot documentReference = await FirebaseFirestore.instance.collection('chat_history').doc(FirebaseAuth.instance.currentUser?.uid).get();

    if (documentReference.exists) {
      if (documentReference["messages"] != null) {
        List<dynamic> messages = documentReference["messages"];

        setState(() {
          _messages = messages;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SideMenu(),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(left: 12.0),
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Color(0xFFF8F8F8),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.menu_sharp,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          "Chat History",
          style: TextStyle(
            fontFamily: 'Outfit',
            color: Colors.grey.shade900,
            fontSize: 24.0,
          ),
        ),
      ),
      body: _messages.isEmpty
          ? const Center(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  "No messages yet.\n\nStart chatting with Anitta to see your chat history here.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Outfit",
                    color: Colors.black,
                  ),
                ),
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(18.0),
              children: _messages
                  .map((e) => Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                        ),
                        child: RichText(
                          text: TextSpan(
                            text: e["role"] == "user" ? "You: " : "Anitta: ",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Outfit",
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: e["content"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            ),
    );
  }
}
