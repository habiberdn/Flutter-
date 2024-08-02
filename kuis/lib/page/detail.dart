import 'package:flutter/material.dart';
import 'package:kuis/page/nav_drawer.dart';
import 'package:kuis/page/profile.dart';


class Detail extends StatelessWidget {
  final String title, description, image;

  Detail({required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 75, 50),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              tooltip: 'Home',
            );
          },
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Otomotif',
            style: TextStyle(color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return Profile();
              }));
            },
            icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
            tooltip: 'MyProfile',
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 71, 88, 76),
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect( //image container if you want set radius 
              borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
              child: SizedBox(
                width: 350,
                height: 200,
                child: Image.network(
                  image,
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
            ),
           const SizedBox(height: 16.0), //give some gap
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          const SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Buy",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
