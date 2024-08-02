import 'package:flutter/material.dart';

void main() {
  runApp(const ItemList());
}

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
         return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "List View Widget",
      home: List()
    );

  }
}

class List extends StatelessWidget {
  const List({super.key});
  @override
  Widget build(BuildContext context){
  var nama = ["Muhammad Habib Erdian", "Andani Putra Pratama", "Muhammad Arifin","Diva Bintang Ramadhan", "Fajar Miftahul Rizky", "Alexius Kenriko", "Ahmad Zaini Nijar", "Eji Abrian Malik", "Isnaini", "Fadilla" ];
  var nobp = ["22101152630116", "22101152630100","22101152630114", "22101152630112","22101152630110","22101152630109","22101152630095","22101152630099","22101152630080","22101152630075"];
  var gambar = [
    "asset/habib.jpeg",
    "asset/andani.jpg",
    "asset/arif.jpeg",
    "asset/download.jpeg",
    "asset/download.jpeg",
    "asset/download.jpeg",
    "asset/download.jpeg",
    "asset/download1.png",
    "asset/download1.png",
    "asset/download1.png"
  ];
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.black,
          title:const Text(
            'List View',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading:const Icon(Icons.account_box, color: Colors.white, size: 30),
          actions:const [
             IconButton(
                onPressed: null,  
                icon: Icon(Icons.menu, color: Colors.white, size: 30)),
          ],
        ),
      body:  ListView.builder(
        itemBuilder: (context,index){
          return Card(
            child:
            ListTile
            (
              title: Text(nama[index],style: TextStyle(fontSize: 20),),
              subtitle: Text(nobp[index],style: TextStyle(fontSize: 20),),
              leading:CircleAvatar(backgroundImage:AssetImage(gambar[index]) ,) 
            )
          );
        },
        itemCount: nama.length)
      ); 
  }
}


