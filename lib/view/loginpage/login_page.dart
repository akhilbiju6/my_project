// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
            TextField(
              decoration: InputDecoration(
                 border: UnderlineInputBorder(
                  
                 ),
                 
              ),
            ), TextField(
              decoration: InputDecoration(
                 border: UnderlineInputBorder(
                  
                 )),),
                 SizedBox(
                  height: 50,
                 ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("already have an acoount?? login",style: TextStyle(
                      color:ColorConstants.mycustomblue,
                      fontSize: 15
                     ),),
                     SizedBox(
                      width: 10,
                     ),
                    
                   ],
                 )
          ],
        ),
      ),
    );
  }
}
