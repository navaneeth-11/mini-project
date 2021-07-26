import 'package:flutter/material.dart';
import 'mainscreen.dart';

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
      title: 'Flutter intern task_4',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: mainscreen(),
    );
  }
}