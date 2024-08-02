import 'package:flutter/material.dart';
import 'package:stack/page/detail.dart';
import 'package:stack/page/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    String nama = "Muhammad Habib Erdian";
    String nobp = "22101152630116";

    return Scaffold(
        drawer: NavMenu(),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading:Builder(builder: (context){
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
          },), 
          title: Text(
            'Flutter Routing',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Notifikasi SnackBar ditampilkan'),
                ));
              },
              icon: Icon(
                Icons.add_alert_outlined,
                color: Colors.white,
              ),
              tooltip: 'Alert',
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text(
                          'My Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      body: const Center(
                        child: Text(
                          'Ini adalah halaman Profile',
                          style: TextStyle(fontSize: 25),
                        ),
                      ));
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Ini adalah halaman HomePage()',
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(
                    title: "HAloo",
                    desc: "yeeee",
                  );
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    'Detail Page',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
