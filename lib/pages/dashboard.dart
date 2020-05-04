import 'package:flutter/material.dart';
import 'package:reciter/widget/CharacterButton.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Reciter", style: TextStyle(fontSize: 24),),
      ),
      body: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: AssetImage("asset/images/tower.jpg"), // <-- BACKGROUND IMAGE
            alignment: Alignment.topRight,

          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 90),
              Center(
                child: Text(
                  "Choose One:",
                  style: TextStyle(fontSize: 39, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CharacterButton.withTitleFont("٣", "Arabic", () {
                    print("Arabic press");
                    Navigator.pushNamed(context, "/arabic");
                  }, 30),
                  SizedBox(width: 35),
                  CharacterButton("আ", "Bangla", () {
                    print("Bangla press");
                    Navigator.pushNamed(context, "/bangla");
                  }),
                ],
              ),
              SizedBox(height: 20),
              CharacterButton("A", "English", () {
                print("Bangla press");
                Navigator.pushNamed(context, "/english");
              }),
            ],
          ),
        ),
      ),
    );
  }
}



