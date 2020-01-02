import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SafeArea(
                child: Column(children: <Widget>[
      Expanded(
          child: SingleChildScrollView(
        child: Container(child: new Image.asset('assets/wedding.png')),
      )),
    ]))));
  }
}
