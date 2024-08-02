import 'package:flutter/material.dart';

class TextUtama extends StatelessWidget {
  // const TextUtama({super.key});

  final text1;
  final text2;
  const TextUtama({this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.cyan),
      child: Column(
        children: [
          Text(
            text1,
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                "Flutter Application ",
                selectionColor: Colors.black,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              children: [
                TextUtama(
                  text1: "Selamat Datang",
                  text2: "Muhammad Habib Erdian",
                )
              ],
            ),
          )),
    ));
