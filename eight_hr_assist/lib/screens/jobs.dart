import 'package:eight_hr_assist/card/tile.dart';
import 'package:eight_hr_assist/components/InputBorder.dart';
import 'package:eight_hr_assist/components/Location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eight_hr_assist/constants.dart';
import 'date_and_time.dart';

class Jobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputBorderDecoration(
                      hintText: 'search jobs', colour: kPrimaryLightColor)
                  .getInputBorder(),
            ),
          ),
          DateAndTime(),
          Location(),
          Divider(color: kPrimaryDarkColor),
          Expanded(
            child: JobTile(),
          ),
        ],
      ),
    );
  }
}
