import 'package:flutter/material.dart';

class Halaman extends StatelessWidget {
   Halaman({required this.title});

  String title;

  @override
   Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor:const Color.fromARGB(255, 25, 75, 50),
          title: Text(
            "Halaman ${title}",
            style: TextStyle(color: Colors.white),
          ),
        ),
      body: Column(children: [
        Text("Ini halaman ${title}", style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
       
      ],),
    );
  }

}
