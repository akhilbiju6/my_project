import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_twitter/control/homescreencontroller/homescreencontroller.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      borderRadius: BorderRadius.circular(10)
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