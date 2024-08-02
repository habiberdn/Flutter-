import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "My Profile",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            const Center(
              child: Text(
                "Ini adalah halaman about",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Kembali"),
            )
          ],
        ));
  }
}