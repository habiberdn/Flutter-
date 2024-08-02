import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        title: 'Flutter Demo',
        home: StackWidget());
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stack Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2020/11/02/15/08/autumn-5706984_640.jpg"),
                    fit: BoxFit.fitHeight)),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  width: 200,
                  height: 120,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello Flutter Indonesisa",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Positioned",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
