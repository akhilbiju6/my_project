import 'package:flutter/material.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Text("chatscreen"),
      ),
    );
  }
}