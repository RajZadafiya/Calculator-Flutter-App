import 'package:flutter/material.dart';
import 'Home_Dart.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new HomePage(),
    );
  }
}


