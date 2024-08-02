import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.title, required this.desc});

  String title;  String desc;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Detail Page",
            style: TextStyle(color: Colors.white),
          ),
        ),
      body: Column(children: [
        Text("Ini halaman detail", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
        Text("Ini halaman detail", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepOrange),)
      ],),
    );
  }
}