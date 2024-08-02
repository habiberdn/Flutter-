import 'package:flutter/material.dart';
import 'package:stack/ItemList.dart';
import 'package:stack/page/about.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color:Colors.blue),
            child: Text("Menu Of Drawer")
            ),
            ListTile(
              title: Text("Menu 1"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }));
              },
            ),
              ListTile(
              title: Text("Menu 2"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ItemList ();
                }));
              },
            ),
        ],
      ),
    );
  }
}