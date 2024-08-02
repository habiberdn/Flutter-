import 'package:flutter/material.dart';
import 'package:kuis/page/halaman.dart';
import 'package:kuis/page/nav_drawer.dart';
import 'package:kuis/page/profile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> angka = ["1", "2", "3", "4", "5", "6"];
  final List<IconData> icons = [
    Icons.home,
    Icons.star,
    Icons.settings,
    Icons.phone,
    Icons.camera,
    Icons.map,
  ];

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
        title: const Center(
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
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 25, 75, 50),
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Selamat Datang",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Action to perform when the button is pressed
                  },
                  child: const Text(' Button'),
                ),
              ],
            ),
          ),
          Positioned(
              top: 150, // Set the desired position
              left: 0,
              right: 0,
              bottom: 0, // Ensures that the container fills the remaining space
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  color: Color.fromARGB(255, 175, 184, 176),
                  padding: EdgeInsets.only(top: 30, left: 0, right: 0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, //// Jumlah item per baris
                      // crossAxisSpacing: 10,
                      // mainAxisSpacing: 10,
                    ),
                    padding: const EdgeInsets.all(5),
                    itemCount: angka.length, //jumlah total item
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5),
                        child: GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  color:
                                      const Color.fromARGB(255, 218, 218, 218),
                                  width: double.infinity,
                                  height: 100,
                                  child: GestureDetector(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(icons[index]),
                                        const SizedBox(height: 10),
                                        Text('Object ${angka[index]}'),
                                      ],
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Halaman(
                                              title:
                                                  "Ini halaman ${index + 1}"),
                                        ),
                                      );
                                    },
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
