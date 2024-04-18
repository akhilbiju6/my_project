// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_twitter/view/homescreen/home_screen.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Center(child: Text("login screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter your email id",
                   
                    
                   ),),
            ),
          ),
          SizedBox(height: 30,), Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter your password",
                   
                    
                   ),),
            ),
          ),
                 SizedBox(
                  height: 25,
                 ),
                ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)),
                 child: Text("login"))
          ],
        ),
      ),
    );
  }
}
