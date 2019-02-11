import 'package:cat_app/cat_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(new CatBoxApp());

class CatBoxApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('in main.dart');
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pinkAccent,
        fontFamily: 'Ubuntu'
      ),
      home: new CatList()
    );
  }
}
