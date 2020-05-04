import 'package:flutter/material.dart';

class CharacterButton extends StatelessWidget {
  final String A;
  final String B;
  final VoidCallback onClick;
  double titleFontSize;

  CharacterButton(this.A, this.B, this.onClick);
  CharacterButton.withTitleFont(this.A, this.B, this.onClick, this.titleFontSize);

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
              side: BorderSide(width: 3, color: Colors.black)
          ),
          icon: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(A, style: TextStyle(fontSize: (titleFontSize != null && titleFontSize > 0) ? titleFontSize : 45)),
              Text(B, style: TextStyle(fontSize: 25)),
            ],
          ),
          label: Text("")),
    );
  }
}