import 'package:flutter/material.dart';
import 'package:stack/page/about.dart';
import 'package:stack/page/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => HomePage(),
      '/about': (context) => AboutPage(),
    },
  ));
}





