import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 186, 186), // Adjusted background color
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 211, 248),
          title: const Text(
            'Layout Flutter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(Icons.person, color: Colors.white, size: 30),
          actions: [IconButton(onPressed: null, icon: Icon(Icons.favorite))],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'asset/images.jpeg',
                                    height: 100,
                                  ),
                                  Column(
                                    children: [
                                      Text("Admin UPI YPTK"),
                                      Text("5 Mins ago")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Icon(Icons.more_vert),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Container(
                          child: Image.asset(
                            "asset/pexels-photo-305565.webp",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Row(
                                children: [Icon(Icons.thumb_up), Text("Like")],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [Icon(Icons.comment), Text("Comment")],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [Icon(Icons.share), Text("Share")],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
