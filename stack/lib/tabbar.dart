import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabView(),
  ));
}

class TabView extends StatelessWidget {
  const TabView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar View'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Home",
                ),
                 Tab(
                  text: "About",
                ),
                Tab(
                  text: "About",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              
            ],) ,
        ));
  }
}
