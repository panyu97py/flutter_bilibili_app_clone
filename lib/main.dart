import 'package:flutter/material.dart';
import 'package:flutter_app/views/homePage/Index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Colors.white),
      home: new HomePage(),
    );
  }
}
