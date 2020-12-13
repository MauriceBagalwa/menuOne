import 'package:flutter/material.dart';
import 'package:menuOne/pages/home/home.dart';
import 'package:menuOne/pages/home/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{"menu": (BuildContext context) => Menu()},
      home: Home(),
    );
  }
}
