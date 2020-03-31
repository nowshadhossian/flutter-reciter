import 'package:flutter/material.dart';

class CharacterButton extends StatelessWidget {
  final String A;
  final String B;
  final VoidCallback onClick;

  CharacterButton(this.A, this.B, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 150,
      child: RaisedButton.icon(
          onPressed: onClick,
          color: Colors.red[400],
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.black)
          ),
          icon: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(A, style: TextStyle(fontSize: 55)),
              Text(B, style: TextStyle(fontSize: 25)),
            ],
          ),
          label: Text("")),
    );
  }
}