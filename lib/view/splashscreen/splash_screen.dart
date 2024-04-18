import 'package:flutter/material.dart';
import 'package:project_twitter/view/homescreen/home_screen.dart';
import 'package:project_twitter/view/registrationscreen/registration_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => RegistrationScreen(),));
    },);
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          child: Image.asset("assets/splashscreenimage.jpeg",fit:BoxFit.fill,),),
      ),
    );
  }
}