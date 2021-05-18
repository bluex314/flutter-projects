import 'package:flutter/material.dart';
import 'package:eight_hr_assist/constants.dart';

class RoundCard extends StatelessWidget {
  RoundCard({this.cardColour, this.cardText, this.onPress});

  final String cardText;
  final Color cardColour;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Material(
        elevation: 10.0,
        color: cardColour,
        borderRadius: BorderRadius.circular(20),
        child: MaterialButton(
          onPressed: onPress,
          child: Text(
            cardText,
            style: kLabelStyle,
          ),
        ),
      ),
    );
  }
}
