import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 25, 75, 50),
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              tooltip: 'MyProfile',
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "habib.erdian@gmail.com",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  "081270333775",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 25, 75, 50),
                    child:  Column(
                      children: [
                        ListTile(
                          title: Text("No Bp",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("22101152630116",
                                  style: TextStyle(color: Colors.white)),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Profile();
                                  }));
                                },
                                icon: Icon(
                                  Icons.copy,
                                  color: Colors.white,
                                ),
                                tooltip: 'MyProfile',
                              ),
                            ],
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text("Status Keaktifan",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          trailing: Text("Aktif",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text("Program Studi",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          trailing: Text("Teknik Informatika",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text("Jenjang",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)),
                          trailing: Text("Sarjana",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  title: Text("Nama Lengkap",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontStyle: FontStyle.italic)),
                  trailing: Text("Muhammad Habib Erdian",
                      style: TextStyle(color: Colors.black, fontSize: 13)),
                ),
                const Divider(),
                const ListTile(
                  title: Text("Nama Panggilan",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontStyle: FontStyle.italic)),
                  trailing: Text(" Habib ",
                      style: TextStyle(color: Colors.black, fontSize: 13)),
                ),
                const Divider(),
                const ListTile(
                  title: Text("Alamat Lengkap",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontStyle: FontStyle.italic)),
                  trailing: Icon(Icons.location_on),
                  subtitle: Text(
                      "Griya Kharisma Permai 3 blok b/4 kubu dalam parak karakah ",
                      style: TextStyle(color: Colors.black, fontSize: 10)),
                ),
              ],
            ),
          ),
        ));
  }
}
