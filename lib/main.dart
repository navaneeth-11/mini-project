import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'package:splashscreen/splashscreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of ygit branch -M main
  //our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MINI PROJECT',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: Splash2(),
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.blue[100],
      seconds: 6,
      navigateAfterSeconds: new mainscreen(),
      title: new Text('WELCOME',textScaleFactor: 2,),
      image: new Image.asset("assets/logo.png"),
      loadingText: Text("Loading.."),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
