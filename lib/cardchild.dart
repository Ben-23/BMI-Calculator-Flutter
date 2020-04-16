import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardChild extends StatelessWidget {
  CardChild({this.iconData, this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 70.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          label,
          style: TextStyle(color: Color(0xff8d8e98)),
        )
      ],
    );
  }
}
