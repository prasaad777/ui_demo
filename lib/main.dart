import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidemo/splash_screen.dart';
import 'home.dart';

void main() {
  runApp(new MyApp());

  // For Launch Splash Screen First
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    home: new SplashScreen(),
//    routes: <String, WidgetBuilder>{
//      '/SplashScreen': (BuildContext context) => new MyApp()
//    },
//  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set Device Orientation - Portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          hintColor: Colors.red,
          primaryColor: Colors.red,
          fontFamily: "Montserrat",
          canvasColor: Colors.transparent),
      home: Home(),
    );
  }
}
