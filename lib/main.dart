import 'package:flutter/material.dart';
import 'package:reciter/pages/arabic.dart';
import 'package:reciter/pages/bangla.dart';
import 'package:reciter/pages/dashboard.dart';
import 'package:reciter/pages/english.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/arabic': (BuildContext context) => Arabic(),
      '/bangla': (BuildContext context) => Bangla(),
      '/english': (BuildContext context) => English(),
    },
  ));
}





