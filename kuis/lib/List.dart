import 'package:flutter/material.dart';
import 'package:kuis/page/detail.dart';
import 'package:kuis/page/nav_drawer.dart';
import 'package:kuis/page/profile.dart';

class List extends StatelessWidget {
  const List({super.key});
  @override
  Widget build(BuildContext context) {
    var image = [
      "https://images.pexels.com/photos/65623/vehicle-chrome-technology-automobile-65623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/70912/pexels-photo-70912.jpeg?auto=compress&cs=tinysrgb&w=600",
      "https://images.pexels.com/photos/164634/pexels-photo-164634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/2062800/pexels-photo-2062800.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/544542/pexels-photo-544542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/2906849/pexels-photo-2906849.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/4101746/pexels-photo-4101746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/3556384/pexels-photo-3556384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/1559225/pexels-photo-1559225.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/12353734/pexels-photo-12353734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/2062789/pexels-photo-2062789.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/158975/pexels-photo-158975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/12713826/pexels-photo-12713826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/16368796/pexels-photo-16368796/free-photo-of-merah-mobil-kendaraan-olahraga.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/16154326/pexels-photo-16154326/free-photo-of-kia-ev9-di-depan-laut.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/23947252/pexels-photo-23947252/free-photo-of-bmw-e60.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/23885187/pexels-photo-23885187/free-photo-of-mobil-antik-dalam-suasana-redup.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/23510948/pexels-photo-23510948/free-photo-of-mobil-kendaraan-urban-abu-abu.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/23548700/pexels-photo-23548700/free-photo-of-kayu-jalan-pohon-mobil.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/23523349/pexels-photo-23523349/free-photo-of-kendaraan-trotoar-tempat-parkir-aspal.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
    ];
    var nama = [
      "Mesin",
      "Coupe Hitam",
      "Mercedes Benz",
      "Sedan Merah",
      "Ford Mustang",
      "Mazda Rx",
      "Audi",
      "Vintage Hijau",
      "Mini Cooper",
      "Hyundai Avante",
      "BMW Z4",
      "Porche",
      "Kia Seltos",
      "Civic",
      "Kia EV9",
      "Bmw E60",
      "Mobil Antik",
      "Porche Hijau Gelap",
      "Nissan GTR",
      "BMW E33"
    ];
    var subtitle = [
      "Mesin Mobil Biru Perak Hitam",
      "Barisan Coupe Hitam",
      "Mercedes Benz Parked In A Row",
      "Sedan Merah Diparkir Di Samping Gedung",
      "Ford Mustang Merah",
      "Kendaraan Merah Saat Malam Hari",
      "Mobil Audi tua",
      "Mobil Vintage Hijau Diparkir Di Samping Gedung Coklat",
      "Mini Cooper Biru Dan Putih Dengan Balon Berjalan Di Jalan",
      "Hyundai Avante Di Latar Belakang Gelap & Abu Abu",
      "Kendaraan Bmw Z4 Hitam",
      "Foto Grayscale Mobil Balap",
      "Kia Seltos Di Sebelah Tangga",
      "Civic Balap",
      "Kia Ev9 Di Depan Laut",
      "Bmw E60 sisi samping",
      "Mobil Antik Dalam Suasana Redup",
      "Porche Carmeet",
      "Backside Nissan GTR",
      "BMW E33 Merah"
    ];

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
          title: Center(
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
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(  
                title: Text(
                  nama[index],
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  subtitle[index],
                  style: TextStyle(fontSize: 15),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(image[index]),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Detail(
                          title: nama[index],
                          description: subtitle[index],
                          image: image[index]);
                    }));
                    // Action to perform when the icon is pressed
                  },
                ),
              ));
            },
            itemCount: nama.length));
  }
}
