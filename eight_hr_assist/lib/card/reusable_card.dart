import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eight_hr_assist/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.onPress, this.text});
  final Function onPress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      margin: EdgeInsets.fromLTRB(2.5, 2.5, 2.5, 2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor,
      ),
      child: MaterialButton(
        padding: EdgeInsets.all(2),
        elevation: 5,
        onPressed: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Icon(Icons.home_sharp),
          ],
        ),
      ),
    );
  }
}
