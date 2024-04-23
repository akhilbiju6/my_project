// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:project_twitter/control/homescreencontroller/homescreencontroller.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fuelcontroller=TextEditingController();
  var mybox=Hive.box("testbox");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Center(child: Text("Homescreen")),
      ),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CarouselSlider(
              
              options: CarouselOptions(
                
                autoPlay: true,
                
                height: 300.0),
              items: [0,1,2,3,4].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: ColorConstants.mycustombrown1
            ),
            child: Image.asset(Provider.of<HomeScreenController>(context).imagelist[i]["image"].toString(),fit:BoxFit.fill,)
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(context: context, builder:(context) {
                       return  Container(
                        color: ColorConstants.mycustombage,
                        width: double.infinity,
                         child: Padding(
                           padding: const EdgeInsets.only(top: 30),
                           child: Column(
                              children: [
                                Container(
                                  child: TextField(
                                    onChanged: (value) => fuelcontroller,
                                    
                                    decoration: InputDecoration(
                                      hintText: "Fuel amount",
                                    ),
                                    
                                  ),
                                  height: 50,
                                  width: 370,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorConstants.mycustombrown1
                                  ),
                                  
                                ),SizedBox(height: 20,),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:"Date"
                                    ),
                                  ),
                                  height: 50,
                                  width: 370,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: ColorConstants.mycustombrown1
                                  ),
                                  
                                ),SizedBox(height: 30,),
                                ElevatedButton(onPressed: () {
                                  
                                  Provider.of<HomeScreenController>(context,listen: false).fuelamount(30, 18);
                                  Navigator.pop(context);
                                
                                }, child: Text("save"))
                              ],
                            ),
                         ),
                       );
                      },);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorConstants.mycustombrown1,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("fuel  expense",style: TextStyle(
                            fontSize: 17,
                            color: ColorConstants.mycustomblack,
                            fontWeight: FontWeight.bold
                          ),),
                          Text(Provider.of<HomeScreenController>(context).totalfuelamount.toString())
                        ],
                      ),
                      height: 130,
                      width: 170,
                      
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstants.mycustombrown1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("bucket list",
                        style: TextStyle(
                          fontSize: 17,fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    height: 130,
                    width: 170,
                    
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                       color: ColorConstants.mycustombrown1,
                       borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("service details",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    height: 130,
                    width: 170,
                   
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstants.mycustombrown1,
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("mileage calculator",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    height: 130,
                    width: 170,
                   
                  ),
                )
              ],
            ),
          )
        ],
        
      
      ),
    );
  }
}