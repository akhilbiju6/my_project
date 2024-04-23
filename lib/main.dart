import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:project_twitter/control/homescreencontroller/homescreencontroller.dart';

import 'package:project_twitter/view/splashscreen/splash_screen.dart';
import 'package:provider/provider.dart';

 Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var box=await Hive.openBox("mybox");
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}