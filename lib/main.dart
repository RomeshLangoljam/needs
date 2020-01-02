import 'package:flutter/material.dart';
import 'package:needs/ui/login/login.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Needs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          hintColor: Colors.grey,
          accentColor: Colors.black,
          buttonColor: Colors.deepOrangeAccent,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.black54,
            minWidth: 200
          ),
          inputDecorationTheme: InputDecorationTheme(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.all(15))),
      home:Login(),
    );
  }
}


