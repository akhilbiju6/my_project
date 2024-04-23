import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier{
 num totalfuelamount=10;
 
  List<Map <dynamic,String>>imagelist=[
  {"image":"assets/rallynotice1.jpeg"},
  {"image":"assets/rallynotice2.jpeg"},
  {"image":"assets/rallynotice3.jpeg"},
  {"image":"assets/bikeannouncement1.jpeg"},
  {"image":"assets/bike announcement2.jpeg"},
 ];
void fuelamount(var amt,date){
   totalfuelamount=totalfuelamount+amt;
   notifyListeners();

}

}