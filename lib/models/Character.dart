import 'package:flutter/material.dart';

class Character {
  String character;
  String description;
  VoidCallback action;

  Character(String character, String description, VoidCallback action){
    this.character = character;
    this.description = description;
    this.action = action;
  }
}