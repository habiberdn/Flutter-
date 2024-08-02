import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
            'My Layout',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.home, color: Colors.white, size: 30),
          actions: [
            IconButton(
                onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
            IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        ),
        body: Container(
          color: Colors.grey[100],
          width: double.infinity,
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.red[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
