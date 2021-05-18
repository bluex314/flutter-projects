import 'package:eight_hr_assist/card/sub_jobs_tile.dart';
import 'package:eight_hr_assist/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HourDefinedJobs extends StatelessWidget {
  static String id = '/hourDefinedJobs';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: SubJobTile()),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: kPrimaryDarkColor,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text('hh'),
            ),
          ),
        ],
      ),
    );
  }
}
