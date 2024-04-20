import 'package:flutter/material.dart';
import 'package:project_twitter/view/chatscreen/chatscreen.dart';
import 'package:project_twitter/view/expensescreen/expensescreen.dart';
import 'package:project_twitter/view/homescreen/home_screen.dart';
import 'package:project_twitter/view/musicscreen/musicscreen.dart';
import 'package:project_twitter/view/userscreen/userscreen.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  List<Widget>screens=[
    HomeScreen(),
    Expensescreen(),
    MusicScreen(),
    ChatScreen(),
    UserScreen()

  ];
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedindex,
      selectedItemColor: ColorConstants.mycustombrown2,
      unselectedItemColor: ColorConstants.mycustomblack,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: ColorConstants.mycustomblack
      ),
      backgroundColor: ColorConstants.mycustombrown1,
    
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "home"),
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "expense"),
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "music"),
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "chatscren"),
      BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "userscreen"),
        
      ],
      onTap: (value) {
      selectedindex=value;
      setState(() {
        
      });}

      ),

    );
  }
}