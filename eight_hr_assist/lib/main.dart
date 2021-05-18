import 'package:eight_hr_assist/screens/date_and_time.dart';
import 'package:eight_hr_assist/screens/hire.dart';
import 'package:eight_hr_assist/screens/homeBasic.dart';
import 'package:eight_hr_assist/screens/hour_defined_jobs.dart';
import 'package:eight_hr_assist/screens/hour_undefined_jobs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(
    EightHourAssistApp(),
  );
}

class EightHourAssistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
        accentColor: Colors.red,
        splashColor: kPrimaryDarkColor,
        fontFamily: 'Mulish',
      ),
      initialRoute: HomeScreenBasic.id,
      routes: {
        HomeScreenBasic.id: (context) => HomeScreenBasic(),
        HirePage.id: (context) => HirePage(),
        DateAndTime.id: (context) => DateAndTime(),
        HourDefinedJobs.id: (context) => HourDefinedJobs(),
        HourUndefinedJobs.id: (context) => HourUndefinedJobs(),
      },
    );
  }
}
