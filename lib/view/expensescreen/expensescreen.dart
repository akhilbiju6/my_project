import 'package:flutter/material.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class Expensescreen extends StatefulWidget {
  const Expensescreen({super.key});

  @override
  State<Expensescreen> createState() => _ExpensescreenState();
}

class _ExpensescreenState extends State<Expensescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Text("expensescreen"),
      ),
    );
  }
}