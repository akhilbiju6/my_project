import 'package:flutter/material.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Text("musicscreen"),
      ),
    );
  }
}