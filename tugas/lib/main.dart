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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
            'My Apps',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(Icons.account_box, color: Colors.white, size: 30),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.menu, color: Colors.white, size: 30)),
          ],
        ),
        body: Container(
          color: Colors.grey[100],
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.red[300],
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.account_box, color: Colors.white, size: 30),
                      Text("Welcome", style: TextStyle(fontSize: 20)),
                      Text("Selamat Datang di Applikasi FLutter",
                          style: TextStyle(fontSize: 20))
                    ]),
                margin: EdgeInsets.only(bottom: 10.0),
              ),
              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(16),
                color: Colors.red[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text("No Bp", style: TextStyle(fontSize: 25.0)),
                        Text("22101152630116",
                            style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    Icon(Icons.info_outline, size: 80.0),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 10.0),
              ),
              Container(
                width: double.infinity,
                height: 100,
                padding: EdgeInsets.all(16),
                color: Colors.red[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text("Nama", style: TextStyle(fontSize: 25.0)),
                        Text("Muhammad Habib Erdian",
                            style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                    Icon(Icons.info_outline, size: 80.0),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 10.0),
              ),
              Container(
                width: double.infinity,
                height: 100,
                
                color: Colors.red[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        "https://awsimages.detik.net.id/community/media/visual/2017/12/06/6414c1ae-fcd1-49a6-8316-4a71c29f93ff_43.jpg?w=600&q=90", width: 200.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Blog", style: TextStyle(fontSize: 25.0)),
                        Text("Deskrips Blog Singkat bla bla bla",
                            style: TextStyle(fontSize: 20.0)),
                      ],
                    ),
                  ],
                ),
                margin: EdgeInsets.only(bottom: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
