import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:reciter/models/Character.dart';
import 'package:reciter/widget/CharacterButton.dart';

class Bangla extends StatefulWidget {
  @override
  _BanglaState createState() => _BanglaState();
}

class _BanglaState extends State<Bangla> {
  List characters = [
    new Character("অ", "অজগর"),
    new Character("আ", "আম"),
    new Character("ই", "ইঁদুর"),
    new Character("ঈ", "ঈগল"),
    new Character("উ", "উঠ"),
    new Character("ঊ", "ঋতু"),
    new Character("ঋ", "একতারা"),
    new Character("এ", "ঐক্য"),
    new Character("ও", "ওজন"),
    new Character("ঔ", "ঔষধ"),
    new Character("ক", "কলা"),
    new Character("খ", "খরগোশ"),
    new Character("গ", "গোলাপ"),
    new Character("ঘ", "ঘোড়া"),
    new Character("ঙ", "বেঙ"),
    new Character("চ", "চরকা"),
    new Character("ছ", "ছাতা"),
    new Character("জ", "বিজ্ঞান"),
    new Character("ঝ", "ঝরণা"),

    new Character("ঞ", "গাঞি"),
    new Character("ট", "টমেটো"),
    new Character("ঠ", "ঠাণ্ডা"),
    new Character("ড", "ডাক্তার"),
    new Character("ঢ", "ঢোল"),

    new Character("ণ", "	মূর্ধন্য ণ"),
    new Character("ত", "	তাবুক"),
    new Character("থ", "	থালা"),
    new Character("দ", "	দড়ি"),
    new Character("ধ", "	ধনুক"),
    new Character("ন", "	নৌকা"),
    new Character("প", "	পা"),
    new Character("ঞ", "	ফল"),
    new Character("ব", "	বানর"),
    new Character("ভ", "	ভালুক"),
    new Character("ম", "	ময়ুর"),
    new Character("য", "	যখন"),
    new Character("র", "	রেল"),
    new Character("ল", "	লাটম"),
    new Character("শ", "	শূকর"),
    new Character("ষ", "	ষ|ড়"),
    new Character("স", "	সাপ"),
    new Character("হ", "	হাত"),
    new Character("ড়", "	পাহাড়"),
    new Character("ঢ়", "	আষাঢ়"),
    new Character("য়", "	য়াংজে নদী"),
    new Character("ৎ", "	উৎস"),
    new Character("ং", "	এবং"),
    new Character("ঃ", "	দুঃখ"),
    new Character("৺", "	হাঁপান")
  ];

  playLocal(fileName) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open("asset/banglasound/" + fileName);
    assetsAudioPlayer.playOrPause();
  }

  Column heading() {
    List<Widget> list = new List();
    list.add(SizedBox(height: 20));
    list.add(Image.asset('asset/images/building.jpeg', fit: BoxFit.fill,));
    list.add(
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 3),
            //borderRadius: BorderRadius.circular(55.0),
            color: Colors.red[100]),
        child: Center(
          child: Text(
            "Bangla Characters:",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.red),
          ),
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
          title: Text("Bangla"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red[200], Colors.white],
                stops: [0.1, 0.7],
                begin: Alignment.bottomCenter,
                end: Alignment.center),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              heading(),
              for (int i = 0; i < characters.length; i = i + 2)
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CharacterButton(
                            characters[i].character, characters[i].description,
                            () {
                          playLocal(i.toString() + ".mp3");
                        }),
                        SizedBox(width: 35),
                        if ((i + 1) < characters.length)
                          CharacterButton(characters[i + 1].character,
                              characters[i + 1].description, () {
                            playLocal((i + 1).toString() + ".mp3");
                          }),
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                )
            ]),
          ),
        ));
  }
}
