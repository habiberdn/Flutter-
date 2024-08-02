import 'package:flutter/material.dart';
import 'package:kuis/List.dart';
import 'package:kuis/page/HomePage.dart';
import 'package:kuis/page/gallery.dart';
import 'package:kuis/page/profile.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 25, 75, 50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/id/1/200/150'),
                    ),
                  ),
                  Text(
                    "Muhammad Habib Erdian",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "22101152630116",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
          ListTile(
            title:const Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                const SizedBox(width: 10),
                Text("Home"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          ),
          ListTile(
            title:const Row(
              children: [
                Icon(
                  Icons.home_mini,
                  color: Colors.black,
                ),
                 SizedBox(width: 10),
                Text("My Product"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const List();
              }));
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.black,
                ),
                 SizedBox(width: 10),
                Text("Gallery"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Gallery();
              }));
            },
          ),
          const Divider(),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.info,
                  color: Colors.black,
                ),
                 SizedBox(width: 10),
                Text("About App"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profile();
              }));
            },
          ),
        ],
      ),
    );
  }
}
