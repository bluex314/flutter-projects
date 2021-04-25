import 'package:flutter/material.dart';
import '../constants.dart';

class IconCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color colour;

  IconCard({@required this.icon, @required this.text, this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
          color: colour,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
