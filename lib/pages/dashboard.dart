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
        title: Text("Dashboard"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 90),
          Center(
            child: Text(
              "Chose One:",
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CharacterButton("٣", "Arabic", () {
                print("Arabic press");
                Navigator.pushNamed(context, "/arabic");
              }),
              SizedBox(width: 35),
              CharacterButton("আ", "Bangla", () {
                print("Bangla press");
                Navigator.pushNamed(context, "/bangla");
              }),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}



