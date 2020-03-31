import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reciter/models/Character.dart';
import 'package:reciter/widget/CharacterButton.dart';

class Arabic extends StatefulWidget {
  @override
  _ArabicState createState() => _ArabicState();
}

class _ArabicState extends State<Arabic> {
  List characters = [
    new Character("أ", "alif"),
    new Character("ب", "ba"),
    new Character("ت", "ta"),
    new Character("ث", "tha"),
    new Character("ج", "jiim"),
    new Character("ح", "hha"),
    new Character("خ", "kha"),
    new Character("د", "daal"),
    new Character("ذ", "thaal"),
    new Character("ذ", "ra"),
    new Character("ر", "zay"),
    new Character("ز", "siin"),
    new Character("ط", "shiin"),
    new Character("ظ", "saad"),
    new Character("ك", "taa"),
    new Character("ل", "thaa"),
    new Character("م", "ayn"),
    new Character("ن", "ghayn"),
    new Character("ص", "fa"),
    new Character("ض", "qaf"),
    new Character("ع", "kaf"),
    new Character("غ", "lam"),
    new Character("ف", "miim"),
    new Character("ق", "nuun"),
    new Character("س", "ha"),
    new Character("ش", "waw"),
    new Character("ه", "ya"),
  ];

  playLocal(fileName)  {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open("asset/arabicsound/" + fileName);
    assetsAudioPlayer.playOrPause();
  }

  Column heading() {
    List<Widget> list = new List();
    list.add(SizedBox(height: 20));
    list.add(Image.asset('asset/images/mosque2.png'));
    list.add(
      Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 3),
          //borderRadius: BorderRadius.circular(55.0),
          color: Colors.red[100]
        ),
        child: Center(
          child: Text(
            "Arabic Characters:",
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.red),
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
          title: Text("Arabic"),
          backgroundColor: Colors.red,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red[200], Colors.white],
                stops: [0.1, 0.7],
                begin: Alignment.bottomCenter,
                end: Alignment.center
              ),
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
                        CharacterButton(characters[i].character, characters[i].description, () {
                          playLocal(i.toString() + ".mp3");
                        }),
                        SizedBox(width: 35),
                        if ((i + 1) < characters.length)
                          CharacterButton(characters[i + 1].character, characters[i+1].description, () {
                            playLocal((i+1).toString() + ".mp3");
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
