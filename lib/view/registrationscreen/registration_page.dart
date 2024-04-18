// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_twitter/view/loginpage/login_page.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Registration screen")),
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
                     InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
                      LoginPage(),)),
                       child: Text("already have an acoount?? login",style: TextStyle(
                        color:ColorConstants.mycustomblue,
                        fontSize: 15
                       ),),
                     ),
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