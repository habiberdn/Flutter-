import 'package:flutter/cupertino.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.3; 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Flutter',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 211, 248),
          title: Text(
            'Medical Centre',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.home, color: Colors.white, size: 30),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.more_vert, color: Colors.white))
          ],
        ),
        body: Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(15),
            width: screenWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('asset/pexels-photo-305565.webp',fit: BoxFit.fill,height: 150, width: double.infinity,)
                        ]),
                  ),
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                    "Selamat Datang di Applikasi Medical Centre. Disini Anda Bisa Mengetahui Tentang Kesehatan",style: TextStyle(fontSize: 15),)
                              ])
                        ]),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 0, 211, 248),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('asset/4961759.png',height: 100,),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Call Centre",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                                "Hubungi Sekarang Jika Anda Merasakan Suatu Gejala",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.0),
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 30.0),
                          color: Color.fromARGB(255, 0, 247, 255),
                          width: cardWidth,
                          height: 200,
                          child: Image.asset('asset/4003796.png'),
                        ),
                         Container(
                          padding: const EdgeInsets.all(20),
                          margin : EdgeInsets.only(right: 30.0),
                          color: Color.fromARGB(255, 255, 0, 0),
                          width: cardWidth,
                          height: 200,
                          child: Image.asset(
                              'asset/Screenshot from 2024-04-15 20-59-44.png'),
                        ),
                         Container(
                            padding: const EdgeInsets.all(20),
                          margin : EdgeInsets.only(right: 30.0),
                            color: Color.fromARGB(255, 0, 247, 255),
                            width: cardWidth,
                            height: 200,
                            child: Image.asset('asset/6902568.png')),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
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
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
