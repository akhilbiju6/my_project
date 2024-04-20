// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project_twitter/view/loginpage/login_page.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Center(child: Text("Registration screen")),
      ),
      
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(
          height: 30,
        ),
           Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter your name",
                  
                   
                    
                   ),),
            ),
          ),SizedBox(height: 10,),
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
          ),SizedBox(height: 10,),
           Container(
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
                height: 10,
               ),Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter your region",
                   
                    
                   ),),
            ),
          ),
               SizedBox(
                height: 10,),
               Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Favorite bike",
                   
                    
                   ),),
            ),
          ),
               SizedBox(
                height: 10,),
               Container(
            width: 350,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Enter your date of birth",
                   
                    
                   ),),
            ),
          ),
               SizedBox(
                height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
                    LoginPage(),)),
                     child: Text("already have an acoount?? login",style: TextStyle(
                      color:ColorConstants.mycustombrown2,
                      fontSize: 17
                     ),),
                   ),
                   SizedBox(
                    width: 10,
                   ),
                  
                 ],
               )
        ],
      ),
    );
  }
}