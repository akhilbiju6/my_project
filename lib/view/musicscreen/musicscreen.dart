import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:project_twitter/view/utils/colorconstants.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mycustombage,
      appBar: AppBar(
        backgroundColor: ColorConstants.mycustombrown1,
        title: Text("musicscreen"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Lottie.asset("assets/Animation - 1713683906943.json"),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Icon(Icons.skip_previous,size: 60),
              Icon(Icons.play_arrow,size: 60,),
              Icon(Icons.skip_next,size: 60,)
            ],
          )
        ],
      ),
    );
  }
}