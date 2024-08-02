import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "List View Widget",
        home: ItemList());
  }
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    var bulan = [
      "Januari",
      "Februari",
      "Maret",
      "April",
      "Mei",
      "Juni",
      "July",
      "Agustus",
      "September",
      "Oktober",
      "November",
      "Desember"
    ];
    var bulanHijriah = [
      "Muharram",
      "Safar",
      "Rabi'ul Awal",
      "Rabi'ul Akhir",
      "Jumadil Awal",
      "Jumadil Akhir",
      "Rajab",
      "Sha'ban",
      "Ramadan",
      "Shawwal",
      "Dzulqa'dah",
      "Dzulhijjah"
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text(
            'List View',
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
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                child: Column(
              children:[
                Text("Bulan masehi"),
              ListTile(
                  title: Text(
                    bulan[index],
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text('Ini Subtitle dari ${bulan[index]}'),
                  leading: CircleAvatar(
                    child: Text(
                      bulan[index][0],
                    ),
                  )),
              //       Text("Bulan Hijriah"),
              // ListTile(
              //     title: Text(
              //       bulanHijriah[index],
              //       style: const TextStyle(fontSize: 20),
              //     ),
              //     subtitle: Text('Ini Subtitle dari ${bulanHijriah[index]}'),
              //     leading: CircleAvatar(
              //       child: Text(
              //         bulanHijriah[index][0],
              //       ),
              //     )),
            ]));
          },
          itemCount: bulan.length,
        ));
  }
}
