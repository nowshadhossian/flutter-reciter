import 'package:flutter/material.dart';
import 'package:reciter/models/Character.dart';
import 'package:reciter/widget/CharacterButton.dart';

class Arabic extends StatefulWidget {
  @override
  _ArabicState createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  List characters = [
    new Character("A", "A for apple", () {
      print("A press");
    }),
    new Character("B", "B for ball", () {
      print("B press");
    }),
    new Character("C", "B for ball", () {
      print("B press");
    }),
    new Character("D", "B for ball", () {
      print("B press");
    }),
    new Character("E", "B for ball", () {
      print("B press");
    }),
    new Character("F", "B for ball", () {
      print("B press");
    }),
    new Character("G", "B for ball", () {
      print("B press");
    }),
    new Character("H", "B for ball", () {
      print("B press");
    }),
  ];

  Column heading() {
    List<Widget> list = new List();
    list.add(SizedBox(height: 20));
    list.add(
      Center(
        child: Text(
          "Arabic Characters:",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
    list.add(SizedBox(height: 20));
    return new Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Arabic"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            heading(),
            for (int i = 0; i < characters.length; i = i + 2)
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CharacterButton(characters[i].character, "Alif", () {
                        print("Arabic press");
                      }),
                      SizedBox(width: 35),
                      if ((i + 1) < characters.length)
                        CharacterButton(characters[i + 1].character, "Ba", () {
                          print("Bangla press");
                        }),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              )
          ]),
        ));
  }
}
