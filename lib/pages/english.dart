import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:reciter/models/Character.dart';
import 'package:reciter/widget/CharacterButton.dart';

class English extends StatefulWidget {
  @override
  _EnglishState createState() => _EnglishState();
}

class _EnglishState extends State<English> {
  List characters = [
    new Character("A", "Apple"),
    new Character("B", "Ball"),
    new Character("C", "Cat"),
    new Character("D", "Dog"),
    new Character("E", "Elephant"),
    new Character("F", "Fan"),
    new Character("G", "Goat"),
    new Character("H", "Hand"),
    new Character("I", "Ink"),
    new Character("J", "Jam"),
    new Character("K", "Kite"),
    new Character("L", "Leg"),
    new Character("M", "Mango"),
    new Character("N", "Neck"),
    new Character("O", "Orange"),
    new Character("P", "Pink"),
    new Character("Q", "Queen"),
    new Character("R", "Rain"),
    new Character("S", "Sing"),
    new Character("T", "Tank"),
    new Character("U", "Umbrella"),
    new Character("V", "Violet"),
    new Character("W", "Whale"),
    new Character("X", "X-Ray"),
    new Character("Y", "Yellow"),
    new Character("Z", "Zebra"),

  ];

 /* banner for next release
 BannerAd myBanner;

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    myBanner = createBanner()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    myBanner.dispose();

    super.dispose();
  }

  createBanner(){
    MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      keywords: <String>['flutterio', 'beautiful apps'],
      contentUrl: 'https://flutter.io',
      childDirected: true,
      testDevices: <String>[], // Android emulators are considered test devices
    );

    myBanner = BannerAd(
      // Replace the testAdUnitId with an ad unit id from the AdMob dash.
      // https://developers.google.com/admob/android/test-ads
      // https://developers.google.com/admob/ios/test-ads
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.smartBanner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event is $event");
      },
    );
    return myBanner;
  }*/

  playLocal(fileName) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open("asset/englishsound/" + fileName);
    assetsAudioPlayer.playOrPause();
  }

  Column heading() {
    List<Widget> list = new List();
    list.add(SizedBox(height: 20));
    list.add(Image.asset('asset/images/scholar.jpeg', fit: BoxFit.fill,));
    list.add(
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 3),
            //borderRadius: BorderRadius.circular(55.0),
            color: Colors.red[100]),
        child: Center(
          child: Text(
            "English Characters:",
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
          title: Text("English"),
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
