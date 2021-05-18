import 'package:eight_hr_assist/screens/jobs.dart';
import 'package:flutter/material.dart';

import 'date_and_time.dart';

class HirePage extends StatelessWidget {
  static String id = '/hire';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Jobs(),
      ),
    );
  }
}
