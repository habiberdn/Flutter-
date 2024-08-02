import 'package:flutter/material.dart';
import 'package:gridview/halaman/halaman.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/satu': (context) => Halaman(title: "Satu",),
        '/dua': (context) => Halaman(title: "Dua",),
        '/tiga': (context) => Halaman(title: "Tiga",),
        '/empat': (context) => Halaman(title: "Empat",),
        '/lima': (context) => Halaman(title: "Lima",),
        '/enam': (context) => Halaman(title: "Enam",),
        '/tujuh': (context) => Halaman(title: "Tujuh",),
        '/delapan': (context) => Halaman(title: "Delapan",),
        '/sembilan': (context) => Halaman(title: "Sembilan",),
        '/sepuluh': (context) => Halaman(title: "Sepuluh",),

      },
    ));

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List angka = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  final List halaman = [
    "/satu",
    "/dua",
    "/tiga",
    "/empat",
    "/lima",
    "/enam",
    "/tujuh",
    "/delapan",
    "/sembilan",
    "/sepuluh"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 66, 0, 233),
          title: Text(
            'Latihan Grid View',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: List.generate(angka.length, (index) {
            return Container(
                padding: const EdgeInsets.all(5),
                child: GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network('https://picsum.photos/id/$index/200/150'),
                      Text('Object ${angka[index]}'),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, halaman[index]);
                  },
                ));
          }),
        ),
      ),
    );
  }
}


